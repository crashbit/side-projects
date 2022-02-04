//
//  Dashboard_testApp.swift
//  Dashboard-test
//
//  Created by Germán Santos Jaimes on 27/01/22.
//

import SwiftUI

@main
struct Dashboard_testApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.light)
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}

// Removing textfield ring
extension NSTextField{
    open override var focusRingType: NSFocusRingType{
        get{return .none}
        set{}
    }
}
