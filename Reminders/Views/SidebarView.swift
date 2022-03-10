//
//  SidebarView.swift
//  Reminders
//
//  Created by DARRELL A PAYNE on 3/8/22.
//

import SwiftUI

struct SidebarView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Items Count: 10")
            List(1...5, id: \.self) { index in
                Text("list \(index)")
            }
            Spacer()
            Button("Add List") {
                
            }
            .padding()
        }
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}
