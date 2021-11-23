//
//  ContentView.swift
//  PrackVK_swiftUI
//
//  Created by Сергей Бадасян on 27.10.2021.
//

import SwiftUI

struct CellView: View {
    var body: some View {
        
        VStack {
            CellUserPrototypeView(userName: "Joe Satriani")
            CellGroupPrototypeView(groupTitle: "Guitar lovers", membersCount: 100)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CellView()
    }
}


