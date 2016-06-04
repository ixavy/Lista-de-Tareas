//
//  SecondViewController.swift
//  Lista de Tareas
//
//  Created by iXavy on 4/6/16.
//  Copyright © 2016 iXavy. All rights reserved.
//

import UIKit
class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var newTask: UITextField!
    
    @IBAction func addButton(sender: AnyObject) {
        self.addTask()
    }
    
    func addTask() {
        if let taskToNew = newTask.text {
            if taskToNew != "" {
                taskList.append(taskToNew)
                newTask.text = ""
                persistenceModel.writeTasks(taskList, tasksKey: taskListKey)
            }
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        self.addTask()
        return true
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newTask.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

