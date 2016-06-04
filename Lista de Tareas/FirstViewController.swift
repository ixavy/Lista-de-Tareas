//
//  FirstViewController.swift
//  Lista de Tareas
//
//  Created by iXavy on 4/6/16.
//  Copyright © 2016 iXavy. All rights reserved.
//

import UIKit

var taskList = [String]()

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskList.count        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = taskList[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            taskList.removeAtIndex(indexPath.row)
            table.reloadData()
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        table.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        
        if let taskLoaded = NSUserDefaults.standardUserDefaults().objectForKey("taskList") {
            taskList = taskLoaded as! [String]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

