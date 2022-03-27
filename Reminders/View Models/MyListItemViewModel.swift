//
//  MyListItemsViewModel.swift
//  Reminders
//
//  Created by DARRELL A PAYNE on 3/22/22.
//

import Foundation
import CoreData

struct MyListItemViewModel: Identifiable {
    let id = UUID()
    private let myListItem: MyListItem
    
    init(myListItem: MyListItem) {
        self.myListItem = myListItem
    }
    
    var listItemId: NSManagedObjectID {
        myListItem.objectID
    }
    
    var title: String {
        myListItem.title ?? ""
    }
    
    var dueDate: DueDate? {
        if let date = myListItem.dueDate {
            return DueDate.from(value: date)
        } else {
            return nil
        }
    }
    
    var isCompleted: Bool {
        myListItem.isCompleted
    }
    
}
