//
//  loginApp.swift
//  login
//
//  Created by Apple Esprit on 14/3/2023.
//

import SwiftUI

@main
struct loginApp: App {
    @StateObject var user = User()

    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            //EditProfil()
            //Profil()
            //mainScreen()
            //SignInScreenView()
//            ProfileView()
//            EditProfil()
            WelcomeScreenView()
                .environmentObject(user)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
