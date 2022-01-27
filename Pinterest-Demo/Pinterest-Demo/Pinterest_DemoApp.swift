//
//  Pinterest_DemoApp.swift
//  Pinterest-Demo
//
//  Created by Germán Santos Jaimes on 26/01/22.
//

import SwiftUI

@main
struct Pinterest_DemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        //hiding title bar
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}
