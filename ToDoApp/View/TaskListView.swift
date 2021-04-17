//
//  ContentView.swift
//  ToDoApp
//
//  Created by jose cardona on 17/04/21.
//

import SwiftUI

struct TaskListView: View {
    let tasks = testDataTasks
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List(tasks) { task in
                    TaskCell(task: task)
                }
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Add New Task")
                    }
                }
                .padding()
            }
            .navigationBarTitle("Tasks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}

struct TaskCell: View {
    let task: Task
    var body: some View {
        HStack {
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 20, height: 20)
            Text(task.title)
        }
        .padding()
    }
}
