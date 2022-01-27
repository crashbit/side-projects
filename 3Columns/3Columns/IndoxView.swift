//
//  IndoxView.swift
//  3Columns
//
//  Created by Germán Santos Jaimes on 25/01/22.
//

import SwiftUI

struct IndoxView: View {
    var body: some View {
        List(allMessages, id: \.self) { message in
            NavigationLink(destination: MessageDetailsView(message: message)) {
                Text(message)
            }
        }
        .navigationTitle("Inbox")
        .toolbar {
            Button(action: { /* Open filters */ }) {
                Image(systemName: "line.horizontal.3.decrease.circle")
            }
        }
    }
}

struct IndoxView_Previews: PreviewProvider {
    static var previews: some View {
        IndoxView()
    }
}
