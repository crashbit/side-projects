//
//  ContentView.swift
//  Pinterest-Demo
//
//  Created by Germán Santos Jaimes on 26/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
        // always light theme
            .preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
