//
//  ViewController.swift
//  Demo
//
//  Created by Kang Li on 2019/6/12.
//  Copyright © 2019 thoughtworks. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    @IBOutlet weak var addButton: UIBarButtonItem!

    var tasks = [Task]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addMessage(_ sender: Any) {
        addTask()
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! customCell
        let task = returnTask(indexPath.row)
        if let task = task {
            cell.customLabel.text = task.text
            if task.isCheck {
                cell.checkLabel.text = "√"
            } else {
                cell.checkLabel.text = ""
            }
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        checkOrUncheckTask(indexPath.row)
        tableView.reloadData()
    }
    
    func checkOrUncheckTask(_ index: Int) {
        if tasks[index].isCheck {
            tasks[index].isCheck = false
        } else {
            tasks[index].isCheck = true
        }
    }
}

extension ViewController {
    
    func returnTask(_ index: Int?) -> Task? {
        let count = tasks.count
        if let index = index {
            if index < count {
                return tasks[index]
            }
        }
        return nil
    }
    
    func addTask() {
        let task = Task(text: "测试数据", isCheck: false)
        tasks.append(task)
    }
}
