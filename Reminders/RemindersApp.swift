//
//  RemindersApp.swift
//  Reminders
//
//  Created by DARRELL A PAYNE on 3/8/22.
//

import SwiftUI

@main
struct RemindersApp: App {
    var body: some Scene {
        WindowGroup {
            let viewContext = CoreDataManager.shared.persistantContainter.viewContext
            
            HomeScreen().environment(\.managedObjectContext, viewContext)
        }
    }
}
