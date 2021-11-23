//
//  ViewModifiers.swift
//  PrackVK_swiftUI
//
//  Created by Сергей Бадасян on 04.11.2021.
//

import SwiftUI

struct MainCellTextModifier: ViewModifier {
    
    let fontSize: CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(.bold(.system(size: fontSize))())
            .foregroundColor(.white)
            .lineLimit(1)
            .padding(.bottom, 1)
    }
}

struct AdditionalCellTextModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 13))
            .foregroundColor(.lightGrey)
            .lineLimit(1)
    }
}
