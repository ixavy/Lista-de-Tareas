//
//  Persistencia.swift
//  Lista de Tareas
//
//  Created by iXavy on 5/6/16.
//  Copyright © 2016 iXavy. All rights reserved.
//

import Foundation

class Persistencia: NSObject {
    
    func writeTasks(tasks: [String], tasksKey: String) {
        NSUserDefaults.standardUserDefaults().setValue(tasks, forKey: tasksKey)
    }

    func loadTasks(tasksKey: String) -> [String] {
        var tasksReturn: [String] = []
        if let tasksLoaded = NSUserDefaults.standardUserDefaults().objectForKey(tasksKey) {
            tasksReturn = tasksLoaded as! [String]
        }
        return tasksReturn
    }
}

