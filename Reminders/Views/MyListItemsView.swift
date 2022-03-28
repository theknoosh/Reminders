//
//  MyListItemsView.swift
//  Reminders
//
//  Created by DARRELL A PAYNE on 3/20/22.
//

import SwiftUI

struct MyListItemsView: View {
    
    typealias ItemAdded = ((String, Date?) -> Void)?
    var onItemAdded: ItemAdded
    
    init(onItemAdded: ItemAdded = nil) {
        self.onItemAdded = onItemAdded
    }
    
    var body: some View {
        VStack (alignment: .leading) {
            List(1...10, id: \.self) {index in
                Text("item \(index)")
            }
            
            AddNewListItemView { title, dueDate in
                onItemAdded?(title, dueDate)
            }
        }
    }
}

struct MyListItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MyListItemsView()
    }
}
