//
//  ToDoList.swift
//  aynelgul-pset5
//
//  Created by Aynel Gül on 29-11-16.
//  Copyright © 2016 Aynel Gül. All rights reserved.
//

import Foundation
import SQLite

class TodoList {
    
    private let id: Int64
    private let name: String
    private var toDoItems = Array<TodoItem>()
    
    init(name: String) {
        self.id = -1
        self.name = name
    }
    
    func getName () -> String {
        return self.name
    }
    
    func getTodoItems () -> Array<TodoItem>{
        return self.toDoItems
    }
}
