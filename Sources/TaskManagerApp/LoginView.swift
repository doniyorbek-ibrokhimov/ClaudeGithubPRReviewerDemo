import SwiftUI

struct LoginView: View {
    @StateObject var userProfile = UserProfile()
    @State private var username = ""
    @State private var password = ""
    @State private var showingAlert = false
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Login") {
                if username.isEmpty || password.isEmpty {
                    showingAlert = true
                } else {
                    userProfile.login(username: username, password: password)
                }
            }
            .alert("Error", isPresented: $showingAlert) {
                Button("OK") { }
            } message: {
                Text("Please enter both username and password")
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Login")
    }
}