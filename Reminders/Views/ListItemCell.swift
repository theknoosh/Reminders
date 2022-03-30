//
//  ListItemCell.swift
//  Reminders
//
//  Created by DARRELL A PAYNE on 3/28/22.
//

import SwiftUI

struct ListItemCell: View {
    
    @State private var active: Bool = false
    let item: MyListItemViewModel
    
    var onListItemDeleted: (MyListItemViewModel) -> Void = { _ in }
    
    var body: some View {
        HStack (alignment: .firstTextBaseline) {
            Image(systemName: Constants.Icons.circle)
                .font(.system(size: 14))
                .opacity(0.75)
            
            VStack(alignment: .leading) {
                Text(item.title)
                if let dueDate = item.dueDate {
                    Text(dueDate.title)
                        .opacity(0.4)
                        .foregroundColor(dueDate.isPastDue ? .red : .primary)
                }
            }
            Spacer()
            if active {
                Image(systemName: Constants.Icons.multiplyCircle)
                    .foregroundColor(.red)
                    .onTapGesture {
                        onListItemDeleted(item)
                    }
                
                Image(systemName: Constants.Icons.exclamationMarkCircle)
                    .foregroundColor(.purple)
            }
            
        }.contentShape(Rectangle())
        .onHover { value in
            active = value
        }
    }
}

struct ListItemCell_Previews: PreviewProvider {
    static var previews: some View {
        ListItemCell(item: MyListItemViewModel(myListItem: MyListItem()))
 
    }
}
