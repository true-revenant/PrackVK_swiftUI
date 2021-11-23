//
//  Extensions.swift
//  PrackVK_swiftUI
//
//  Created by Сергей Бадасян on 02.11.2021.
//

import Foundation
import SwiftUI

public extension UIApplication {
    
    func endEditing() {
        self.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

public extension Color {
    
    static let steelBlue = Color(red: 70 / 255, green: 130 / 255, blue: 180 / 255)
    
    static let lightGrey = Color(red: 211 / 255, green: 211 / 255, blue: 211 / 255)
}
