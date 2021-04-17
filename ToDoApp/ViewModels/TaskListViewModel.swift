//
//  TaskListViewModel.swift
//  ToDoApp
//
//  Created by jose cardona on 17/04/21.
//

import Foundation
import Combine

class TaskListViewModel: ObservableObject {
    @Published var taskCellViewModel = [TaskCellViewModel]()
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        self.taskCellViewModel = testDataTasks.map { task in 
            TaskCellViewModel(task: task)
        }
    }
    func addTask(task: Task) {
        let taskVM = TaskCellViewModel(task: task)
        self.taskCellViewModel.append(taskVM)
    }
}
