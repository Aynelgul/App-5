//
//  ToDoManager.swift
//  aynelgul-pset5
//
//  Created by Aynel Gül on 29-11-16.
//  Copyright © 2016 Aynel Gül. All rights reserved.
//

import Foundation
import SQLite

class ToDoManager {
    
    // Make it a singleton.
    static let sharedInstance = ToDoManager()
    
    // roep databasehelper aan
    private let database = DatabaseHelper()
    
    var todoLists = Array<TodoList>()
    
    func readTodos () {
//        database.
        // roept databasehelper aan en geeft object mee (todoitem)
        
    }
    
    func writeTodos (id: Int64, listId: Int64, name: String) {
//        let newTodoItem = TodoItem(id: id, listId: listId, name: name)
//        todoLists.append(newTodoItem)
    }
    
    func deleteList(index: Int) {
        todoLists.remove(at: index)
    }
    
}
