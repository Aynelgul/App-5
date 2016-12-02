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
    
    let id: Int64
    let name: String
    var toDoItems = Array<ToDoItem>()
    
    init(id: Int64, name: String) {
        self.id = id
        self.name = name
    }
}
