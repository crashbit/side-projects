//
//  Home.swift
//  Pinterest-Demo
//
//  Created by Germán Santos Jaimes on 26/01/22.
//

import SwiftUI

struct Home: View {
    //getting the window size
    var window = NSScreen.main?.visibleFrame
    
    
    var body: some View {
        VStack{
            HStack{
                VStack{
                    HStack{
                        
                    }
                }
            }
            
        }
        .frame(width: window!.width/1.5, height: window!.height-50)
        .background(Color.white.opacity(0.6))
        .background(BlurWindow())
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
