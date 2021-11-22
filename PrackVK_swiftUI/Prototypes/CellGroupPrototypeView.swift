//
//  CellGroupPrototypeView.swift
//  PrackVK_swiftUI
//
//  Created by Сергей Бадасян on 04.11.2021.
//

import SwiftUI

fileprivate let screenWidth = UIScreen.main.bounds.size.width

struct CellGroupPrototypeView: View {
    
    var groupTitle : String
    var membersCount : Int
    
    var body: some View {
        HStack {
            Image("group_4")
                .resizable()
                .frame(width: 85, height: 85, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(90).padding(.leading, 10)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            
            
            VStack {
                HStack {
                    Text(groupTitle)
                        .modifier(MainCellTextModifier(fontSize: 20))
                    
                    Spacer()
                }.padding(.leading, 10)
                
                HStack {
                    Text("Количество участников: \(membersCount)")
                        .modifier(AdditionalCellTextModifier())
                    
                    Spacer()
                }.padding(.leading, 10)
                
            }
            Spacer()
        }
        .frame(width: screenWidth, height: 100
               , alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color.gray)
        
    }
}

struct CellGroupPrototypeView_Previews: PreviewProvider {
    static var previews: some View {
        CellGroupPrototypeView(groupTitle: "Guitar lovers", membersCount: 100)
    }
}
