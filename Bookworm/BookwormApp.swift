//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Tatiana Bondarenko on 5/13/23.
//

import CoreData
import SwiftUI

@main
struct BookwormApp: App {
    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}