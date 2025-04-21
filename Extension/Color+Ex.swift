//
//  Color+Ex.swift
//  Challenge2_Courage
//
//  Created by Jacob on 4/13/25.
//

import SwiftUI

extension Color {
    static let yellowPrimary = Color(hex: "#FFD95B")
    static let yellowSecondary = Color(hex: "FFA724")
    static let yellow4Gradient = Color(hex: "FFD138")

    static let material01 = Color(hex: "#F8F8F8")
    static let material02 = Color(hex: "#EFEFEF")

    static let blackPrimary = Color(hex: "#000000")
    static let blackSecondary = Color(hex: "#6D6D6D")
    
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
