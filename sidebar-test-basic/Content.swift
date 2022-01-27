import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Text("sidebar")
            Text("content").navigationTitle(Text("el titulo pues"))
        }.toolbar {
            ToolbarItem(placement: .navigation){
                Button(action: toggleSidebar, label:{Image(systemName: "sidebar.leading")})
            
            }
        }.frame(minWidth: 400, maxWidth: .infinity, minHeight: 200, maxHeight: .infinity)
    }
    
    private func toggleSidebar() { 
            #if os(iOS)
            #else
            NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
            #endif
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
