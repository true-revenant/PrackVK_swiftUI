//
//  mainTabBarView.swift
//  PrackVK_swiftUI
//
//  Created by Сергей Бадасян on 22.11.2021.
//

import SwiftUI

struct mainTabBarView: View {
    var body: some View {
        
        TabView {
            
            NewsfeedView()
                .tabItem {
                    Image(systemName: "newspaper.fill")
                    Text("Newsfeed")
                }
            
            FriendsView()
                .tabItem {
                    Image(systemName: "person.2.circle")
                    Text("Friends")
              }
            
            GroupsView()
                .tabItem {
                    Image(systemName: "person.2.circle.fill")
                    Text("Groups")
              }
        }.navigationBarBackButtonHidden(true)
    }
}

struct mainTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        mainTabBarView()
    }
}
