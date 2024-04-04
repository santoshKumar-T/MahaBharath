//
//  MahaBharathApp.swift
//  MahaBharath
//
//  Created by Madhav on 03/04/24.
//

import SwiftUI

@main
struct MahaBharathApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
