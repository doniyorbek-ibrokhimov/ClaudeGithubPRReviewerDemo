import XCTest
@testable import TaskManagerApp

final class TaskManagerAppTests: XCTestCase {
    func testTaskCreation() {
        let task = Task(title: "Test Task")
        XCTAssertEqual(task.title, "Test Task")
        XCTAssertFalse(task.isCompleted)
    }
    
    func testTaskManagerAddTask() {
        let manager = TaskManager()
        manager.addTask(title: "New Task")
        XCTAssertEqual(manager.tasks.count, 1)
        XCTAssertEqual(manager.tasks.first?.title, "New Task")
    }
}