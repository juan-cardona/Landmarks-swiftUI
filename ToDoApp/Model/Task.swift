//
//  Task.swift
//  ToDoApp
//
//  Created by jose cardona on 17/04/21.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct Task: Codable, Identifiable {
    @DocumentID var id: String?
    var title: String
    var completed: Bool
    @ServerTimestamp var createdTime: Timestamp?
    var userId: String?
}

#if DEBUG
let testDataTasks = [
    Task(title: "Implement the UI", completed: true),
    Task(title: "Connect to Firebase" , completed: false),
    Task(title: "Hello World", completed: true),
    Task(title: "another test task", completed: false)
]
#endif

