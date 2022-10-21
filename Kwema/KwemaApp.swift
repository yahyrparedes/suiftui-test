//
//  KwemaApp.swift
//  Kwema
//
//  Created by Yahyr Paredes on 21/10/22.
//

import SwiftUI

@main
struct KwemaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
