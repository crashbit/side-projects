//
//  Home.swift
//  Dashboard-test
//
//  Created by Germán Santos Jaimes on 27/01/22.
//

import SwiftUI

struct Home: View {
    
    //Current Tab
    @State var currentTab: String  = "home"
    
    //For matched geometry effect
    @Namespace var animation
    
    var body: some View {
        HStack(spacing : 0){
            // Side bar menu
            VStack(spacing: 10){
                
                // menu buttons
                ForEach(["home", "monitor", "bag", "card", "trophy", "list"], id: \.self){
                    image in
                    MenuButton(image: image)
                }
            }
            .padding(.top, 60)
            .frame(width:85)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(
            
                //Corner radius only on right side
                ZStack{
                    Color.white
                        .padding(.trailing, 30)
                    Color.white
                        .cornerRadius(15)
                        .shadow(color: Color.black.opacity(0.03), radius: 5, x: 5, y: 0)
                }
            )
            
            // Home view
            VStack(spacing: 15){
                HStack{
                    VStack(alignment: .leading, spacing: 2){
                        Text("Dashboard")
                            .font(.title.bold())
                            .foregroundColor(.black)
                        Text("Payment updates")
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    
                    // Searchbar
                    HStack(spacing: 10){
                        Image(systemName: "magnifyingglass")
                            .font(.title3)
                            .foregroundColor(.black)
                        
                        TextField("Search", text: .constant(""))
                            .frame(width:150)
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(Capsule())
                }
            }
            .padding(.horizontal, 30)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
        //Max frame
        .frame(width: getRect().width/1.75, height: getRect().height - 130, alignment: .leading)
        .background(Color("BG")).ignoresSafeArea()
        .buttonStyle(BorderlessButtonStyle())
        .textFieldStyle(PlainTextFieldStyle())
    }
    
    
    @ViewBuilder
    func MenuButton(image: String )-> some View{
      
        Image(image)
            .resizable()
            .renderingMode(.template)
            .aspectRatio(contentMode: .fit)
            .foregroundColor(currentTab == image ? .black : .gray)
            .frame(width:22, height: 22)
            .frame(width: 80, height: 59)
            .overlay(
                HStack{
                    if currentTab == image{
                        Capsule()
                            .fill(Color.black)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                            .frame(width:2, height: 40)
                            .offset(x:2)
                    }
                }
                ,alignment: .trailing
            )
            .contentShape(Rectangle())
            .onTapGesture {
                withAnimation(.spring()){
                    currentTab = image
                }
            }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//Extending view to get screen frame
extension View{
    func getRect()-> CGRect{
        return NSScreen.main!.visibleFrame
    }
}
