import SwiftUI

struct SettingsView: View {
    var body: some View {
        TabView {
            NavigationView {
                ZStack {
                    Color.black
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack(spacing: 20) {
                        Spacer()
    
                        VStack {
                            List {
                                Section(header: Text("ACCOUNT")) {
                                    NavigationLink(destination: Text("Account Settings")) {
                                        HStack {
                                            Label("Account", systemImage: "person")
                                                .foregroundColor(.white)
                                                .font(.headline)
                                            Spacer()
                                        }
                                        .contentShape(Rectangle())
                                        .padding()
                                        .background(Color.gray.opacity(0.2))
                                        .cornerRadius(8)
                                    }
                                    NavigationLink(destination: Text("Privacy Settings")) {
                                        HStack {
                                            Label("Privacy", systemImage: "lock")
                                                .foregroundColor(.white)
                                                .font(.headline)
                                            Spacer()
                                        }
                                        .contentShape(Rectangle())
                                        .padding()
                                        .background(Color.gray.opacity(0.2))
                                        .cornerRadius(8)
                                    }
                                }
                                
                                Section(header: Text("MISC")) {
                                    NavigationLink(destination: Text("Help & Support")) {
                                        HStack {
                                            Label("Help", systemImage: "questionmark.circle")
                                                .foregroundColor(.white)
                                                .font(.headline)
                                            Spacer()
                                        }
                                        .contentShape(Rectangle())
                                        .padding()
                                        .background(Color.gray.opacity(0.2))
                                        .cornerRadius(8)
                                    }
                                    NavigationLink(destination: Text("About")) {
                                        HStack {
                                            Label("About", systemImage: "info.circle")
                                                .foregroundColor(.white)
                                                .font(.headline)
                                            Spacer()
                                        }
                                        .contentShape(Rectangle())
                                        .padding()
                                        .background(Color.gray.opacity(0.2))
                                        .cornerRadius(8)
                                    }
                                    NavigationLink(destination: Text("DONATE")) {
                                        HStack {
                                            Label("Donate", systemImage: "dollarsign.circle")
                                                .foregroundColor(.white)
                                                .font(.headline)
                                            Spacer()
                                        }
                                        .contentShape(Rectangle())
                                        .padding()
                                        .background(Color.gray.opacity(0.2))
                                        .cornerRadius(8)
                                    }
                                }
                                Section(header: Text("LOG OUT")) {
                                    NavigationLink(destination: LoginView()) {
                                        HStack {
                                            Label("Log Out", systemImage: "info.circle")
                                                .foregroundColor(.red)
                                                .font(.headline)
                                            Spacer()
                                        }
                                        .contentShape(Rectangle())
                                        .padding()
                                        .background(Color.gray.opacity(0.2))
                                        .cornerRadius(8)
                                    }
                                }
                            }
                            .listStyle(InsetGroupedListStyle()) // Use InsetGroupedListStyle
                            .background(Color.black)
                            .foregroundColor(.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 0)
                                    .shadow(color: .black, radius: 5, x: 0, y: 0)
                            )
                            .frame(maxHeight: .infinity, alignment: .top)
                        }
                    }
                    
                }
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.inline)
            }
            .accentColor(.white)
            .navigationViewStyle(StackNavigationViewStyle())
        }
        
        .tabItem {
            Image(systemName: "gearshape")
            Text("Settings")
        }
    }
}

