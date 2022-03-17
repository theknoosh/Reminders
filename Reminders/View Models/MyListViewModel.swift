//
//  MyListViewModel.swift
//  Reminders
//
//  Created by DARRELL A PAYNE on 3/17/22.
//

import Foundation
import CoreData
import SwiftUI

struct MyListViewModel: Identifiable {
    
    
    private let myList: MyList
    
    init(myList: MyList) {
        self.myList = myList
    }
    
    var id: NSManagedObjectID {
        myList.objectID
    }
    
    var name: String {
        myList.name ?? ""
    }
    
    var color: Color {
        Color(myList.color ?? .clear)
    }

}
