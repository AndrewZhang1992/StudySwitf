//
//  CommonDef.swift
//  TableView
//
//  Created by Andrew on 16/9/18.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import UIKit
import Foundation

public struct AZSCREEN{
   static let WIDTH = UIScreen.main.bounds.width
   static let HEIGHT = UIScreen.main.bounds.height
}

public class AZTools : NSObject{
    
    static let current_app_version = Bundle.main.infoDictionary!["CFBundleShortVersionString"]
    static let mobile_system_version = UIDevice.current.systemVersion
    
    
    /// 基本设备
    
    // 基本设备类型判断(竖版) iphone／itouch   ipad
    static let IS_IPHONEUI = ( UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.phone ? true : false )
    static let IS_IPADUI = ( UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.pad ? true : false )
    static let IS_IPHONE4 = ( Int(AZSCREEN.HEIGHT) % 480 == 0 ? true : false)
    static let IS_IPHONE5 = ( Int(AZSCREEN.HEIGHT) % 560 == 0 ? true : false)
    static let IS_IPAD   = ( Int(AZSCREEN.HEIGHT) % 1024 == 0 ? true : false)
    static let IS_IPHONE6   = ( Int(AZSCREEN.HEIGHT) % 667 == 0 ? true : false)
    static let IS_IPHONE6P  = ( Int(AZSCREEN.HEIGHT) % 736 == 0 ? true : false)
    static let IS_IPHONE6_OR_7   = IS_IPHONE6
    static let IS_IPHONE6P_OR_7P  = IS_IPHONE6P
    
    
    /// scale
    static let SCALE =  AZSCREEN.HEIGHT/568.0
    static let SCALE_X =  AZSCREEN.WIDTH/320.0
    static let SCALE_Y =  AZSCREEN.HEIGHT/568.0
    
    // 5  6  比例一致，6p 放大
    static let SCALE_6PX = IS_IPHONE6_OR_7 ? SCALE_X : 1
    static let SCALE_6PY = IS_IPHONE6P_OR_7P ? SCALE_Y : 1
 
    
    open class func convert_scale(_ x : CGFloat) -> CGFloat {
        return x/2
    }
    
    // 标注图按照 6 的尺寸标注 使用下面的自动转化
    
    
    /// width 转化为最低兼容设备尺寸
    ///
    /// - parameter x:
    ///
    /// - returns:
    open class func convertTo6_W(_ x : CGFloat) -> CGFloat{
        return convert_scale(x) * 320 / 375
    }

 
    /// height 转化为最低兼容设备尺寸
    ///
    /// - parameter x:
    ///
    /// - returns:
    open class func convertTo6_H(_ x : CGFloat) -> CGFloat {
        return convert_scale(x) * 568 / 667
    }

}


//MARK: 延时函数

@available(iOS 8.0, *)
@discardableResult func delay(_ afterTime:TimeInterval, _ block : @escaping ()->Void ) -> DispatchWorkItem
{
     let workItem = DispatchWorkItem(block: block)
     DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+afterTime, execute: workItem)
    return workItem
}

class CommonDef: NSObject {

}
