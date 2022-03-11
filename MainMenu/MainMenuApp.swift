//
//  MainMenuApp.swift
//  MainMenu
//
//  Created by Александр Касьянов on 10.07.2021.
//

import SwiftUI

@main

struct MainMenuApp: App {
    @StateObject var favourite = Favourite()
    @StateObject var completed = SettingsStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(favourite).environmentObject(completed)
        }
    }
}
