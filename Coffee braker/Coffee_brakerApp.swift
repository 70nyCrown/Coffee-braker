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
    
    init() {
        FirebaseApp.configure()
      }
    
    var body: some Scene {
        WindowGroup {
            SignInView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
