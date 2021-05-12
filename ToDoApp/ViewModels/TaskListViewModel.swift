//
//  TaskListViewModel.swift
//  ToDoApp
//
//  Created by jose cardona on 17/04/21.
//

import Foundation
import Combine
 
class TaskListViewModel: ObservableObject {
    @Published var taskRepository = TaskRepository()
    @Published var taskCellViewModel = [TaskCellViewModel]()
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        taskRepository.$tasks
            .map { tasks in
                tasks.map { task in
                    TaskCellViewModel(task: task)
                }
            }
            .assign(to: \.taskCellViewModel, on: self)
            .store(in: &cancellables)
    }
    func addTask(task: Task) {
        taskRepository.addTask(task)
//        let taskVM = TaskCellViewModel(task: task)
//        self.taskCellViewModel.append(taskVM)
    }
}
