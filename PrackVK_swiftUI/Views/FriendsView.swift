//
//  FriendsView.swift
//  PrackVK_swiftUI
//
//  Created by Сергей Бадасян on 06.11.2021.
//

import SwiftUI

class Friend : Identifiable {
    
    internal init(name: String, photoUrl: String) {
        self.name = name
        self.photoUrl = photoUrl
    }
    
    let name : String
    let photoUrl : String
    let id : UUID = UUID()
    
}

struct FriendsView: View {
    
    private var friends: [Friend] = [
        Friend(name: "Tosin Abasi", photoUrl: ""),
        Friend(name: "Joe Satriani", photoUrl: ""),
        Friend(name: "Steve Vai", photoUrl: ""),
        Friend(name: "Nick Johnston", photoUrl: ""),
        Friend(name: "Tosin Abasi", photoUrl: ""),
        Friend(name: "Joe Satriani", photoUrl: ""),
        Friend(name: "Steve Vai", photoUrl: ""),
        Friend(name: "Nick Johnston", photoUrl: ""),
        Friend(name: "Tosin Abasi", photoUrl: ""),
        Friend(name: "Joe Satriani", photoUrl: ""),
        Friend(name: "Steve Vai", photoUrl: ""),
        Friend(name: "Nick Johnston", photoUrl: "")
    ]
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(friends.sorted(by: { $0.name < $1.name })) { friend in

                    NavigationLink(
                        destination: PhotosView(),
                        label: {
                            CellUserPrototypeView(userName: friend.name)//.listRowInsets(EdgeInsets(top: 0.5, leading: 0, bottom: 0.5, trailing: 0))
                        }).listRowInsets(EdgeInsets(top: 0.5, leading: 0, bottom: 0.5, trailing: 0))
                    
                    //CellUserPrototypeView(userName: friend.name).listRowInsets(EdgeInsets(top: 0.5, leading: 0, bottom: 0.5, trailing: 0))
                }
            }
        }
        
        //Text("FRIENDS")
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
