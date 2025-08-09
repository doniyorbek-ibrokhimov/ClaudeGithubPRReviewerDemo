import Foundation

struct Task: Identifiable, Codable {
    let id = UUID()
    var title: String
    var isCompleted: Bool = false
    var createdAt: Date = Date()
    
    init(title: String) {
        self.title = title
    }
}