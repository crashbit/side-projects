//
//  BlurView.swift
//  SideBar-test
//
//  Created by Germán Santos Jaimes on 25/01/22.
//

import SwiftUI

struct BlurView : NSViewRepresentable {
    
    func makeNSView(context: Context) -> NSVisualEffectView {
        let view = NSVisualEffectView()
        view.blendingMode = .behindWindow
        return view
    }
    
    func updateNSView(_ nsView: NSVisualEffectView,  context: Context) {
        
    }
    
    
}
