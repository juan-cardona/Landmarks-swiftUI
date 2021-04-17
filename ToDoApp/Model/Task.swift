//
//  Task.swift
//  ToDoApp
//
//  Created by jose cardona on 17/04/21.
//

import Foundation

struct Task: Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var completed: Bool
}

#if DEBUG
let testDataTasks = [
    Task(title: "Implement the UI", completed: true),
    Task(title: "Connect to Firebase" , completed: false),
    Task(title: "Hello World", completed: true),
    Task(title: "another test task", completed: false)
]
#endif

