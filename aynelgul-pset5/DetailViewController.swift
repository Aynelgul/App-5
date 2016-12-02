//
//  DetailViewController.swift
//  aynelgul-pset5
//
//  Created by Aynel Gül on 29-11-16.
//  Copyright © 2016 Aynel Gül. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var inputUserTodo: UITextField!
    
    @IBAction func addTodo(_ sender: UIButton) {
        
//        ToDoManager.sharedInstance.writeTodos(id: <#T##Int64#>, listId: <#T##Int64#>, name: inputUserTodo.text!)
        
        inputUserTodo.text = ""
        
        //var boodschappen = TodoList(id: 1, name: "boodschappen")
        //var wortels = TodoItem(id: 9, listId: 1, name: "wortels")
        //var appels = TodoItem(id: 10, listId: 1, name: "appels")
        //
        //boodschappen.toDoItems.append(wortels)
        //boodschappen.toDoItems.append(appels)
        //
        //for item in boodschappen.toDoItems {
        //    print(item.name)
        //}
        
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.inputUserTodo {
                label.text = detail.getName()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: TodoList? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return ToDoManager.sharedInstance.todoLists.
//        return detailObject.getTodoItems.count
        
        return detailItem!.getTodoItems().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        
// ToDoManager.sharedInstance.todoLists[indexPath.row].getName()
        
//        cell.todoItem.text = ToDoManager.sharedInstance.todoLists[indexPath.row].getTodoItems()
        
        var item = ToDoManager.sharedInstance.todoLists
        
//        cell.todoItem.text = item[indexPath.row]
        
        cell.todoSwitch.setOn(true, animated: true)
        
        return cell
    }


}

