//
//  Coffee_brakerApp.swift
//  Coffee braker
//
//  Created by Антон Воронин on 29.05.2022.
//

import SwiftUI
import FirebaseCore

@main
struct Coffee_brakerApp: App {
    let persistenceController = PersistenceController.shared
    let defaults = UserDefaults.standard
    
    init() {
        FirebaseApp.configure()
        let defaults = UserDefaults.standard
      }
    
    var body: some Scene {
        WindowGroup {
            InitialView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
