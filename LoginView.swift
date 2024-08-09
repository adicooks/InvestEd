import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showError: Bool = false
    @State private var errorMessage: String = ""
    @State private var loggedIn: Bool = false
    @State private var animateText: Bool = false

    struct User {
        let username: String
        let password: String
    }

    class Database {
        static let shared = Database()

        func saveUser(_ user: User) {

        }
    }

    // save login info
    func saveLoginInformation() {
        let userDefaults = UserDefaults.standard
        userDefaults.setValue(username, forKey: "username")
        userDefaults.setValue(password, forKey: "password")
        let expirationDate = Calendar.current.date(byAdding: .day, value: 2, to: Date()) // add 2 to exp
        userDefaults.setValue(expirationDate, forKey: "expirationDate")
    }


    // retrieve login
    func retrieveLoginInformation() -> (String, String)? {
        let userDefaults = UserDefaults.standard
        guard let storedUsername = userDefaults.string(forKey: "username"),
              let storedPassword = userDefaults.string(forKey: "password"),
              let expirationDate = userDefaults.object(forKey: "expirationDate") as? Date else {
            return nil
        }

        if Date() <= expirationDate {
            return (storedUsername, storedPassword)
        } else {
            // remove
            userDefaults.removeObject(forKey: "username")
            userDefaults.removeObject(forKey: "password")
            userDefaults.removeObject(forKey: "expirationDate")
            return nil
        }
    }


    func signUp() {
        if username.isEmpty {
            showError = true
            errorMessage = "Username cannot be empty."
        } else if username.count < 5 {
            showError = true
            errorMessage = "Username must be at least 5 characters long."
        } else if password.isEmpty {
            showError = true
            errorMessage = "Password cannot be empty."
        } else if password.count < 8 {
            showError = true
            errorMessage = "Password must be at least 8 characters long."
        } else {
            let user = User(username: username, password: password)
            Database.shared.saveUser(user)
            saveLoginInformation()
            loggedIn = true
        }
    }

    func login() {
        if let storedCredentials = retrieveLoginInformation(),
           storedCredentials.0 == username && storedCredentials.1 == password {
            loggedIn = true
            saveLoginInformation()
        } else {
            showError = true
            errorMessage = "Invalid login credentials."
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        Text("InvestEd")
                            .font(.system(size: 60, weight: .bold))
                            .overlay(
                                LinearGradient(
                                    gradient: Gradient(colors: [.white, .green]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                                .mask(Text("InvestEd")
                                    .font(.system(size: 60, weight: .bold))
                                )
                            )
                    }
                    Spacer().frame(height: 25)

                    HStack {
                        Text("Discover the power of")
                            .foregroundColor(.white)
                            .font(.system(size: animateText ? 30 : 24, weight: .bold))
                            .animation(.easeInOut(duration: 1.0))
                            .onAppear {
                                withAnimation {
                                    animateText.toggle()
                                }
                            }

                        Text("investing.")
                            .font(.system(size: animateText ? 30 : 24, weight: .bold))
                            .foregroundColor(.white)
                            .overlay(
                                LinearGradient(
                                    gradient: Gradient(colors: [.white, .green]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                                .mask(Text("investing.")
                                    .font(.system(size: animateText ? 30 : 24, weight: .bold))
                                )
                            )
                            .animation(.easeInOut(duration: 1.0))
                            .onAppear {
                                withAnimation {
                                    animateText.toggle()
                                }
                            }
                    }
                    .frame(height: 9.01)
                }
                GeometryReader { geometry in
                    ZStack(alignment: Alignment(horizontal: .center, vertical: .center)) {
                        Image("icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: max(geometry.size.width, 450), height: max(geometry.size.height, 450))
                            .padding(.top, -50)
                            .padding(.leading, -50)
                    }
                }

                Spacer()

                TextField("Username", text: $username)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)

                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)

                Spacer().frame(height: 25)

                Button(action: {
                    signUp()
                }, label: {
                    Text("Sign Up")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.blue)
                        .cornerRadius(25)
                })

                Button(action: {
                    login()
                }, label: {
                    Text("Login")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.green)
                        .cornerRadius(25)
                })
                .padding(.bottom, 10)
            }
            .padding()
            .alert(isPresented: $showError, content: {
                Alert(title: Text("Error"), message: Text(errorMessage), dismissButton: .default(Text("OK")))
            })
            .navigationBarHidden(true)
            .fullScreenCover(isPresented: $loggedIn, content: {
                HomeView()
            })
        }
    }

    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
}

