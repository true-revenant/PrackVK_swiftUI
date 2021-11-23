//
//  PhotosView.swift
//  PrackVK_swiftUI
//
//  Created by Сергей Бадасян on 22.11.2021.
//

import SwiftUI
import ASCollectionView

class Photo: Identifiable {
    internal init(url : String) {
       self.url = url
    }
  
   let id: UUID = UUID()
   let url: String
}

struct PhotosView: View {
    
    fileprivate let screenWidth = UIScreen.main.bounds.size.width
    
    private var photos : [Photo] = [
        Photo(url: ""),
        Photo(url: ""),
        Photo(url: ""),
        Photo(url: ""),
        Photo(url: ""),
        Photo(url: ""),
        Photo(url: ""),
        Photo(url: ""),
        Photo(url: ""),
        Photo(url: ""),
        Photo(url: "")
    ]
    
    var body: some View {
        
        VStack {

            ASCollectionView(data: photos) { photo, _  in
                
                Image("user_pic")
                    .resizable()
                    .frame(width: (screenWidth - 50) / 2, height: (screenWidth - 50) / 2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    //.padding(.leading, 10)
                
            }
            .layout {
                .grid(
                    itemSpacing: 20,
                    lineSpacing: 15
                )
            }
            .navigationTitle("Photos")
            .navigationBarTitleDisplayMode(.inline)
            //.navigationBarBackButtonHidden(true)
            //.navigationBarHidden(true)
        }
        
    }
}

struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        
        PhotosView()
    }
}
