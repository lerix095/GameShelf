//
//  HEX.swift
//  P12M3L8
//
//  Created by Valeriy Protsenko on 18.01.2026.
//

import SwiftUI
import UIKit


struct HexColor {
    let r: CGFloat
    let g: CGFloat
    let b: CGFloat
    let a: CGFloat
    
    init(_ hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        
        switch hex.count {
        case 3: // RGB (12-bit) #RGB
            a = 1
            r = CGFloat((int >> 8) * 17) / 255
            g = CGFloat((int >> 4 & 0xF) * 17) / 255
            b = CGFloat((int & 0xF) * 17) / 255
            
        case 6: // RGB (24-bit) #RRGGBB
            a = 1
            r = CGFloat(int >> 16) / 255
            g = CGFloat(int >> 8 & 0xFF) / 255
            b = CGFloat(int & 0xFF) / 255
            
        case 8: // ARGB (32-bit) #AARRGGBB
            a = CGFloat(int >> 24) / 255
            r = CGFloat(int >> 16 & 0xFF) / 255
            g = CGFloat(int >> 8 & 0xFF) / 255
            b = CGFloat(int & 0xFF) / 255
            
        default:
            a = 1
            r = 0
            g = 0
            b = 0
        }
    }
}

// MARK: - SwiftUI

extension Color {
    init(hex: String) {
        let c = HexColor(hex)
        self.init(.sRGB, red: c.r, green: c.g, blue: c.b, opacity: c.a)
    }
    
    static func hex(_ value: String) -> Color {
        Color(hex: value)
    }
}

// MARK: - UIKit

extension UIColor {
    convenience init(hex: String) {
        let c = HexColor(hex)
        self.init(red: c.r, green: c.g, blue: c.b, alpha: c.a)
    }
    
    static func hex(_ value: String) -> UIColor {
        UIColor(hex: value)
    }
}
