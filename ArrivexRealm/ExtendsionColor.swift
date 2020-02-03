//
//  ExtendsionColor.swift
//  ArrivexRealm
//
//  Created by pi3nat on 9/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//
//  ref from
//

import SwiftUI

extension UIColor {
    
    static let cream = UIColor().colorFromHex("f1ede2")
    static let darkred = UIColor().colorFromHex("#951519")
    static let yellowmoon = UIColor().colorFromHex("#dcc169")
    static let gray = UIColor().colorFromHex("#D3D3D3")
    static let darkCream = UIColor().colorFromHex("#E1D6C3")
    static let lightCream = UIColor().colorFromHex("#F9F6ED")
    static let blue = UIColor().colorFromHex("#B0D5FA")
    static let darkblue = UIColor().colorFromHex("#87B3DF")
    
    
    func colorFromHex(_ hex : String) -> UIColor {
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if hexString.hasPrefix("#"){
            hexString.remove(at: hexString.startIndex)
        }
        
        if hexString.count != 6{
            return UIColor.black
        }
        
        
        var rgb : UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&rgb)
        
        return UIColor.init(red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
                            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
                            blue: CGFloat(rgb & 0x0000FF) / 255.0,
                            alpha: 1.0)
        
        
    }
}

