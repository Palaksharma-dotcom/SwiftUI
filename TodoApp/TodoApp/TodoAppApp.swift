//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Rapipay on 09/04/23.
//

import SwiftUI

@main
struct TodoAppApp: App {
//    let persistenceController = PersistenceController.shared
 
    var listViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView().environmentObject(listViewModel)
//                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
        }
    }
}
