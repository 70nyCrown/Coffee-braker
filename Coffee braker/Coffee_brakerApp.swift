//
//  Coffee_brakerApp.swift
//  Coffee braker
//
//  Created by Антон Воронин on 29.05.2022.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct Coffee_brakerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {t
            TestingView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
