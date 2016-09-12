//
//  Extesion.swift
//  TableView
//
//  Created by Andrew on 16/9/12.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import Foundation
import UIKit

extension UIColor
{
    static func fromRGB(_ hexRGB:UInt32) -> UIColor {
        
        let r  = CGFloat((hexRGB & 0xFF0000) >> 16)/255.0
        let g = CGFloat((hexRGB & 0xFF00) >> 8)/255.0
        let b = CGFloat((hexRGB & 0xFF))/255.0
        
        return UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
}



