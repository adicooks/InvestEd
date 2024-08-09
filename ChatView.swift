import SwiftUI
import Combine

struct Message: Identifiable {
    let id = UUID()
    let content: String
    let isSentByUser: Bool
}

struct ChatGPTAPIResponse: Decodable {
    let choices: [Choice]
    
    struct Choice: Decodable {
        let message: Message
    }
    
    struct Message: Decodable {
        let content: String
    }
}

class ChatViewModel: ObservableObject {
    @Published var messages: [Message] = []
    @Published var userInput: String = ""
    @Published var isResponding: Bool = false
    
    private let chatGPTAPIKey = "KEYISBLURRED"
    
    private var cancellable: AnyCancellable?
    
    func sendMessage() {
        let userMessage = Message(content: userInput, isSentByUser: true)
        messages.append(userMessage)
        
        isResponding = true // Set isResponding to true before making the API request
        
        // Call the ChatGPT API to get a response
        cancellable = chatGPTAPIRequest(userInput)
            .sink(receiveCompletion: { _ in }, receiveValue: { [weak self] response in
                let botMessage = Message(content: response.choices.first?.message.content ?? "", isSentByUser: false)
                self?.messages.append(botMessage)
                self?.isResponding = false // Set isResponding to false after receiving a response
            })
        
        userInput = ""
    }
    
    private func chatGPTAPIRequest(_ message: String) -> AnyPublisher<ChatGPTAPIResponse, Error> {
        let url = URL(string: "https://api.openai.com/v1/chat/completions")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("Bearer \(chatGPTAPIKey)", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let parameters: [String: Any] = [
            "model": "gpt-3.5-turbo",
            "messages": [["role": "system", "content": "You are a helpful assistant."], ["role": "user", "content": message]]
        ]
        
        let jsonData = try! JSONSerialization.data(withJSONObject: parameters)
        request.httpBody = jsonData
        
        return URLSession.shared.dataTaskPublisher(for: request)
            .tryMap { element -> Data in
                guard let httpResponse = element.response as? HTTPURLResponse,
                      httpResponse.statusCode == 200 else {
                    throw URLError(.badServerResponse)
                }
                return element.data
            }
            .decode(type: ChatGPTAPIResponse.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}

struct ChatView: View {
    @StateObject private var viewModel = ChatViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.messages) { message in
                    MessageView(message: message)
                }
                .listStyle(PlainListStyle())
                .padding(.top, -10)
                
                HStack {
                    TextField("Type a message...", text: $viewModel.userInput)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal, 16)
                    
                    Button(action: viewModel.sendMessage) {
                        Image(systemName: "paperplane.fill")
                            .font(.system(size: 20))
                            .padding(8)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                    }
                    .padding(.trailing, 16)
                }
                .padding(.bottom)
                
                if viewModel.isResponding {
                    Text("Responding...")
                        .font(.headline)
                        .foregroundColor(.gray)
                }
            }
            .navigationTitle("InvestEd - AI ChatBot")
            .navigationBarTitleDisplayMode(.inline)
            
        }
        .tabItem {
            Image(systemName: "ellipsis.bubble.fill")
            Text("Chat")
        }
    }
}

struct MessageView: View {
    let message: Message
    
    var body: some View {
        HStack {
            if !message.isSentByUser {
                Spacer()
            }
            
            if message.isSentByUser {
                Text(message.content)
                    .padding(10)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(16)
                    .font(.system(size: 16))
                    .shadow(color: Color.black.opacity(0.2), radius: 2, x: 0, y: 1)
            } else {
                Image("icon")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                
                Text(message.content)
                    .padding(10)
                    .background(Color.white)
                    .foregroundColor(.black)
                    .cornerRadius(16)
                    .font(.system(size: 16))
                    .shadow(color: Color.black.opacity(0.2), radius: 2, x: 0, y: 1)
            }
            
            if message.isSentByUser {
                Spacer()
            }
        }
        .padding(.horizontal, 16)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}



