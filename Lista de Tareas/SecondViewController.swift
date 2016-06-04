//
//  SecondViewController.swift
//  Lista de Tareas
//
//  Created by iXavy on 4/6/16.
//  Copyright © 2016 iXavy. All rights reserved.
//

import UIKit
class SecondViewController: UIViewController {

    @IBOutlet weak var newTask: UITextField!
    
    @IBAction func addButton(sender: AnyObject) {
        
        if let taskToNew = newTask.text {
            if taskToNew != "" {
                taskList.append(taskToNew)
                newTask.text = ""
                persistenceModel.writeTasks(taskList, tasksKey: taskListKey)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

