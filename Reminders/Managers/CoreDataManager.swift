//
//  CoreDataManager.swift
//  Reminders
//
//  Created by DARRELL A PAYNE on 3/12/22.
//

import Foundation
import CoreData

class CoreDataManager {
    let persistantContainter: NSPersistentContainer
    static let shared = CoreDataManager()
    
    private init() { // private prevents another file from creating instance of this class
        persistantContainter = NSPersistentContainer(name: "RemindersModel")
        
        persistantContainter.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to initialize Core Datat \(error)")
            }
        }
    }
}
