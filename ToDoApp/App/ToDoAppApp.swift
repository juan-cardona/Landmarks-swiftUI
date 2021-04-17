//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by jose cardona on 17/04/21.
//

import SwiftUI

@main
struct ToDoAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            TaskListView()
        }
    }
}
