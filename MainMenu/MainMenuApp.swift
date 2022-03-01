//
//  MainMenuApp.swift
//  MainMenu
//
//  Created by Александр Касьянов on 10.07.2021.
//

import SwiftUI

@main

struct MainMenuApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(SettingsStore())
        }
    }
}
