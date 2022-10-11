//
//  Sports_AppApp.swift
//  Sports App
//
//  Created by Sidney Okine on 29/08/2022.
//

import SwiftUI

@main
struct Sports_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
