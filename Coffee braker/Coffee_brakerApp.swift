//
//  Coffee_brakerApp.swift
//  Coffee braker
//
//  Created by Антон Воронин on 29.05.2022.
//

import SwiftUI

@main
struct Coffee_brakerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
