import SwiftUI

struct HomeView: View {
    @State private var isMenuVisible = false
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            TabView {
                MainView()
                LevelView()
                QuizView()
                ChatView()
                SettingsView()
            }
        }
    }
}
