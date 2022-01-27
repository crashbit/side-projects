//
//  Sidebar.swift
//  3Columns
//
//  Created by Germán Santos Jaimes on 25/01/22.
//

import SwiftUI

struct Sidebar: View {
    @State private var isDefaultItemActive = true
    var body: some View {
        List{
            Text("Favorites")
                .font(.caption)
                .foregroundColor(.secondary)
            NavigationLink(destination: IndoxView(), isActive: $isDefaultItemActive) {
                    Label("Inbox", systemImage: "tray.2")
            }
            NavigationLink(destination: SentView()) {
                    Label("Sent", systemImage: "paperplane")
            }
        }.listStyle(SidebarListStyle())
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
