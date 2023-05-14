//
//  DataController.swift
//  Bookworm
//
//  Created by Tatiana Bondarenko on 5/13/23.
//

import CoreData
import SwiftUI

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm")

    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
