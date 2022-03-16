//
//  SidebarView.swift
//  Reminders
//
//  Created by DARRELL A PAYNE on 3/8/22.
//

import SwiftUI

struct SidebarView: View {
    
    @State private var isPresented: Bool = false
    @Environment(\.managedObjectContext) var context: NSManagedObjectContext
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Items Count: 10")
            List(1...5, id: \.self) { index in
                Text("list \(index)")
            }
            Spacer()
            Button {
                // Action
                isPresented = true
            } label: {
                HStack {
                    Image(systemName: Constants.Icons.plusCircle)
                    Text("Add List")
                }
            }.buttonStyle(.plain)
            .padding()
        }.sheet(isPresented: $isPresented) {
            // dismiss
        } content: {
            AddNewListView(vm: AddNewListViewModel(context: context))
        }

    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}
