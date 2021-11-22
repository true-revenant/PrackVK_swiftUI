//
//  MainView.swift
//  PrackVK_swiftUI
//
//  Created by Сергей Бадасян on 06.11.2021.
//

import SwiftUI

struct ContainerView: View {
    
    @State private var shouldShowMainView: Bool = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                LoginView(isUserLoggedIn: $shouldShowMainView)
                
                
                NavigationLink(
                    destination: mainTabBarView(),
                    isActive: $shouldShowMainView,
                    label: {})
            }
        }
        
//        NavigationView {
//            HStack {
//                LoginView()
//                //EmptyView()
//            }
//        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}
