//
//  GroupsView.swift
//  PrackVK_swiftUI
//
//  Created by Сергей Бадасян on 06.11.2021.
//

import SwiftUI

class Group : Identifiable {
    
    internal init(title: String, photoUrl: String, membersCount: Int) {
        self.title = title
        self.photoUrl = photoUrl
        self.membersCount = membersCount
    }
    
    let title : String
    let photoUrl : String
    let membersCount : Int
    let id : UUID = UUID()
    
}

struct GroupsView: View {
    
    private var groups : [Group] = [
        Group(title: "Guitar lovers", photoUrl: "", membersCount: 100),
        Group(title: "Krypto", photoUrl: "", membersCount: 1200),
        Group(title: "Fresh music", photoUrl: "", membersCount: 2000),
        Group(title: "Guitar lovers", photoUrl: "", membersCount: 100),
        Group(title: "Krypto", photoUrl: "", membersCount: 1200),
        Group(title: "Fresh music", photoUrl: "", membersCount: 2000),
        Group(title: "Guitar lovers", photoUrl: "", membersCount: 100),
        Group(title: "Krypto", photoUrl: "", membersCount: 1200),
        Group(title: "Fresh music", photoUrl: "", membersCount: 2000),
        Group(title: "Guitar lovers", photoUrl: "", membersCount: 100),
        Group(title: "Krypto", photoUrl: "", membersCount: 1200),
        Group(title: "Fresh music", photoUrl: "", membersCount: 2000)
    ]
    
    var body: some View {
        
        VStack {
            
            List {
                ForEach(groups.sorted(by: { $0.title < $1.title })) { group in

                    CellGroupPrototypeView(groupTitle: group.title, membersCount: group.membersCount).listRowInsets(EdgeInsets(top: 0.5, leading: 0, bottom: 0.5, trailing: 0))
                }
            }
        }
        
        //Text("GROUPS")
    }
}

struct GroupsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsView()
    }
}
