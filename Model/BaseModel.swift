//
//  BaseModel.swift
//  Reminders
//
//  Created by DARRELL A PAYNE on 3/12/22.
//

import Foundation
import CoreData

protocol BaseModel {
    
    static var viewContext: NSManagedObjectContext { get }
    func save () throws
}

extension BaseModel where Self: NSManagedObject {
    
    static var viewContext: NSManagedObjectContext {
        CoreDataManager.shared.persistantContainter.viewContext
    }
    
    func save() throws {
        try Self.viewContext.save()
    }
}
