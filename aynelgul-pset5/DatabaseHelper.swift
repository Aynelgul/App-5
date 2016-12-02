//
//  DatabaseHelper.swift
//  aynelgul-pset5
//
//  Created by Aynel Gül on 29-11-16.
//  Copyright © 2016 Aynel Gül. All rights reserved.
//

import Foundation
import SQLite

class DatabaseHelper {
    
    // Create the tables.
    private let toDosTable = Table("toDosTable")
    private let titleTable = Table("titleTable")
    
    // Expressions toDosTable
    private let id = Expression<Int64>("id")
    private let toDoPoint = Expression<String?>("toDoPoint")
    private let state = Expression<Bool>("state")
    private let listId = Expression<Int64>("listid")
    
    // Expressions titleTable
    private let name = Expression<String?>("name")
    
    private var database: Connection?
    
    init?() {
        do {
            try setupDatabase()
        } catch {
            print(error)
            return nil
        }
    }
    
    private func setupDatabase() {
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        do {
            database = try Connection("\(path)/db1.sqlite3")
            createToDoTable()
            createTitleTable()
        } catch {
            // error handling
            print ("Cannot connect to database: \(error)")
        }
    }
    
    private func createToDoTable() {
        do {
            try database!.run(toDosTable.create(ifNotExists: true) { t in
                t.column(id, primaryKey: .autoincrement)
                t.column(toDoPoint, unique: true)
            } )
        } catch {
            // error handling
            print("Failed to create to do table: \(error)")
        }
    }
    
    private func createTitleTable() {
        do {
            try database!.run(titleTable.create(ifNotExists: true) { t in
                t.column(id, primaryKey: .autoincrement)
                t.column(name)
            } )
        } catch {
            // error handling
            print("Failed to create title table: \(error)")
        }
    }
    
    func create(toDoPoint: String) throws {
        let insert = toDosTable.insert(self.toDoPoint <- toDoPoint)
        
        do {
            let rowId = try database!.run(insert)
            print(rowId)
        } catch {
            // Error handling.
            throw error
        }
    }
    
    func readAll() throws -> [String?] {
        
        var results = [String?]()
        
        do {
            for point in try database!.prepare(toDosTable.select(toDoPoint)) {
                results.append(point[toDoPoint])
            }
        } catch {
            throw error
        }
        return results
    }
    
    func deleteFromDatabase(name: String) throws {
        
        let deletePoint = toDosTable.filter(toDoPoint == name)
        let delete = deletePoint.delete()
        
        try print(database!.run(delete))
        
    }
    
}
