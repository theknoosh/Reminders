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
    func delete() throws
    static func byID<T: NSManagedObject>(id: NSManagedObjectID) -> T?
}

extension BaseModel where Self: NSManagedObject {
    
    static var viewContext: NSManagedObjectContext {
        CoreDataManager.shared.persistantContainter.viewContext
    }
    
    func save() throws {
        try Self.viewContext.save()
    }
    
    func delete() throws {
        Self.viewContext.delete(self)
        try save()
    }
    
    static func byID<T>(id:NSManagedObjectID) -> T? {
        viewContext.object(with: id) as? T
    }
}
