//
//  HomeScreen.swift
//  Reminders
//
//  Created by DARRELL A PAYNE on 3/8/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            SidebarView()
            Text("MyListItems")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
