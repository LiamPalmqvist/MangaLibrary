//
//  MangaLibraryApp.swift
//  MangaLibrary
//
//  Created by Liam Palmqvist on 10/09/2024.
//

import SwiftUI

@main
struct MangaLibraryApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
