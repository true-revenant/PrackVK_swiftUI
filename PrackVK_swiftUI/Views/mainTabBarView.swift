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
                    Image(systemName: "phone.fill")
                    Text("Newsfeed")
                }
            
            FriendsView()
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Friends")
              }
            
            GroupsView()
                .tabItem {
                    Image(systemName: "tv.fill")
                    Text("Groups")
              }
        }
    }
}

struct mainTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        mainTabBarView()
    }
}
