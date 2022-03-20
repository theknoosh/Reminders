//
//  MyListItemsHeaderView.swift
//  Reminders
//
//  Created by DARRELL A PAYNE on 3/19/22.
//

import SwiftUI

struct MyListItemsHeaderView: View {
    
    let name: String
    let count: Int
    let color: Color
    
    var body: some View {
        HStack {
            Text(name)
                .font(.system(size: 28))
                .fontWeight(.bold)
                .foregroundColor(color)
                .padding()
            Spacer()
            Text("\(count)")
                .font(.system(size: 32))
                .foregroundColor(color)
                .padding()
        }
    }
}

struct MyListItemsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MyListItemsHeaderView(name: "Groceries", count: 6, color: Color.green)
    }
}
