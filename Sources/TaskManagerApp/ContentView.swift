import SwiftUI

struct ContentView: View {
    @StateObject private var taskManager = TaskManager()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(taskManager.tasks) { task in
                    TaskRowView(task: task) {
                        taskManager.toggleTask(task)
                    }
                }
                .onDelete(perform: deleteTask)
            }
            .navigationTitle("Tasks")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        taskManager.addTask(title: "New Task")
                    }
                }
            }
        }
    }
    
    private func deleteTask(at offsets: IndexSet) {
        taskManager.deleteTasks(at: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}