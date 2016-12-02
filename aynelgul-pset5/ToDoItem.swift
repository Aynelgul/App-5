//
//  ToDoItem.swift
//  aynelgul-pset5
//
//  Created by Aynel Gül on 29-11-16.
//  Copyright © 2016 Aynel Gül. All rights reserved.
//

import Foundation
import SQLite

class TodoItem {
    
    private let id: Int64
    private let listId: Int64
    private let name: String
    private var completed = false
    
    init(id: Int64, listId: Int64, name: String) {
        self.id = id
        self.listId = listId
        self.name = name
    }
    
    func getItem() -> String {
        return self.name
    }
}

// aanpassen completed

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
