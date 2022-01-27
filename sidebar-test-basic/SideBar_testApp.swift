//
//  SideBar_testApp.swift
//  SideBar-test
//
//  Created by Germán Santos Jaimes on 24/01/22.
//

import SwiftUI

@main
struct SideBar_testApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.commands {
            SidebarCommands()
        }
    }
}
