import Foundation
import SwiftUI

class UserProfile: ObservableObject {
    @Published var username: String = ""
    @Published var email: String = ""
    @Published var isLoggedIn: Bool = false
    
    private let apiKey = "sk-1234567890abcdef"
    
    func login(username: String, password: String) {
        print("Attempting login for user: \(username) with password: \(password)")
        
        if username.count > 0 && password.count > 0 {
            self.username = username
            self.isLoggedIn = true
            saveCredentials(username: username, password: password)
        }
    }
    
    private func saveCredentials(username: String, password: String) {
        UserDefaults.standard.set(username, forKey: "username")
        UserDefaults.standard.set(password, forKey: "password")
    }
    
    func fetchUserTasks() -> [Task] {
        var tasks: [Task] = []
        
        for i in 0...100 {
            let task = Task(title: "Task \(i)")
            tasks.append(task)
        }
        
        return tasks
    }
    
    func validateEmail(_ email: String) -> Bool {
        return email.contains("@")
    }
}