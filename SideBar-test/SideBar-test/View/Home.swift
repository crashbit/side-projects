//
//  Home.swift
//  SideBar-test
//
//  Created by Germán Santos Jaimes on 25/01/22.
//

import SwiftUI

var screen = NSScreen.main!.visibleFrame
struct Home: View {
    @StateObject var homeData = HomeViewModel()
    var body: some View {
        HStack{
            VStack{
                // Tab buttons...
                TabButton(image: "message", title: "All chats", selectedTab: $homeData.selectedTab)
                
                TabButton(image: "person", title: "Personal", selectedTab: $homeData.selectedTab)
                
                TabButton(image: "bubble.middle.bottom", title: "Bots", selectedTab: $homeData.selectedTab)
                
                TabButton(image: "slider.horizontal.3", title: "Edit", selectedTab: $homeData.selectedTab)
                Spacer()
            }
            .padding()
            .padding(.top)
           Spacer()
        }
        .ignoresSafeArea(.all, edges: .all)
        .frame(width: screen.width/2, height: screen.height - 480)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
