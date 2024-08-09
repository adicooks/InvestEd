import SwiftUI

struct MainView: View {
    @State private var animationStarted = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image("icon")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .padding(.trailing, 200)
                    
                    VStack(alignment: .leading) {
                        Text("InvestEd")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .padding(.bottom, 10)
                            .animation(.default)
                            .padding(.leading, -225)
                        
                        Text("Learn. Quiz.\nChat. Improve.")
                            .font(.system(size: 24, weight: .bold))
                            .padding(.leading, -225)
                            .padding(.top, -10)
                            .overlay(
                                LinearGradient(
                                    gradient: Gradient(colors: [.white, .green]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                                .mask(Text("Learn. Quiz.\nChat. Improve.")
                                    .font(.system(size: 24, weight: .bold))
                                )
                                .padding(.leading, -289)
                                .padding(.top, -10)
                            )
                    }
                }
                .padding(.top, 50)
                .animation(.default)
                
                HStack(spacing: 20) {
                    ColorfulSquare(color: Color.red, title: "Levels", destination: LevelView())
                        .animation(.easeInOut(duration: 0.5))
                        .opacity(animationStarted ? 1 : 0)
                    ColorfulSquare(color: Color.blue, title: "Quiz", destination: QuizView())
                        .animation(.easeInOut(duration: 0.5).delay(0.2))
                        .opacity(animationStarted ? 1 : 0)
                }
                .animation(.easeInOut(duration: 1))
                
                HStack(spacing: 20) {
                    ColorfulSquare(color: Color.green, title: "Chat", destination: ChatView())
                        .animation(.easeInOut(duration: 0.5).delay(0.4))
                        .opacity(animationStarted ? 1 : 0)
                    ColorfulSquare(color: Color.orange, title: "Settings", destination: SettingsView())
                        .animation(.easeInOut(duration: 0.5).delay(0.6))
                        .opacity(animationStarted ? 1 : 0)
                }
                .animation(.easeInOut(duration: 1))
                
                Spacer()
                
                Rectangle()
                    .fill(Color.brown)
                    .frame(maxWidth: .infinity, maxHeight: 60)
                    .cornerRadius(10)
                    .padding()
                    .overlay(
                        Button(action: {
                            guard let url = URL(string: "https://www.gofundme.com/f/help-us-bring-investing-education-to-students") else { return }
                            UIApplication.shared.open(url)
                        }) {
                            Text("Donate")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .padding(.horizontal)
                    )
                
                Spacer()
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    animationStarted = true
                }
            }
            .padding(.top, -150)
        }
        .tabItem {
            Label("Home", systemImage: "house")
        }
    }
}

struct ColorfulSquare<Destination: View>: View {
    let color: Color
    let title: String
    let destination: Destination
    
    var body: some View {
        NavigationLink(destination: destination) {
            VStack {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
            }
            .frame(width: 150, height: 150)
            .padding()
        }
        .background(color)
        .cornerRadius(10)
    }
}

extension View {
    func foregroundGradient(colors: [Color]) -> some View {
        self.overlay(
            LinearGradient(
                gradient: Gradient(colors: colors),
                startPoint: .leading,
                endPoint: .trailing
            )
        )
    }
}

