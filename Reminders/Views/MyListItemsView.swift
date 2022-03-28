//
//  MyListItemsView.swift
//  Reminders
//
//  Created by DARRELL A PAYNE on 3/20/22.
//

import SwiftUI

struct MyListItemsView: View {
    var body: some View {
        VStack (alignment: .leading) {
            List(1...10, id: \.self) {index in
                Text("item \(index)")
            }
            
            AddNewListItemView()
        }
    }
}

struct MyListItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MyListItemsView()
    }
}
