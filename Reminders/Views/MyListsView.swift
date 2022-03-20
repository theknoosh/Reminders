//
//  MyListsView.swift
//  Reminders
//
//  Created by DARRELL A PAYNE on 3/17/22.
//

import SwiftUI

struct MyListsView: View {
    
    @StateObject var vm: MyListsViewModel
    
    init(vm: MyListsViewModel){
//        self.vm = vm
        _vm = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            List {
                Text("My List")
                    .font(.title2)
                ForEach(vm.myLists) {myList in
                    NavigationLink {
                        MyListItemsHeaderView(name: myList.name, count: 6, color: myList.color)
                        MyListItemsView()
                    } label: {
                        HStack {
                            Image(systemName: Constants.Icons.line3HorizontalCircleFill)
                                .font(.title)
                                .foregroundColor(myList.color)
                            Text(myList.name)
                        }
                    }.contextMenu {
                        Button {
                            // Action
                            vm.delete(myList)
                        } label: {
                            Label {
                                Text("Delete")
                            } icon: {
                                Image(systemName: "trash")
                            }
                            
                        }
                    }
                }
            }
        }
    }
}

struct MyListsView_Previews: PreviewProvider {
    static var previews: some View {
        let context = CoreDataManager.shared.persistantContainter.viewContext
        MyListsView(vm: MyListsViewModel(context: context))
    }
}
