//
//  UIView+Frame.swift
//  AZSevenT
//
//  Created by Andrew on 16/7/26.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import Foundation
import UIKit

extension UIView
{
    var x:CGFloat{
        get{
            return self.frame.origin.x
        }
        set{
            self.frame = CGRect(x: newValue, y: self.frame.origin.y, width: self.frame.size.width, height: self.frame.size.height)
        }
    }
    
    var y:CGFloat{
        get{
            return self.frame.origin.y
        }
        set{
            self.frame = CGRect(x: self.frame.origin.x, y:newValue, width: self.frame.size.width, height: self.frame.size.height)
        }
    }
    
    var width:CGFloat{
        get{
            return self.frame.size.width
        }
        set{
            self.frame = CGRect(origin: self.frame.origin, size: CGSize(width: newValue, height: self.frame.size.height))
        }
    }
    
    var height:CGFloat{
        get{
            return self.frame.size.height
        }
        set{
            self.frame = CGRect(origin: self.frame.origin, size: CGSize(width: self.frame.size.width, height: newValue))
        }
    }
    
}