//
//  CommonDef.swift
//  TableView
//
//  Created by Andrew on 16/9/18.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import UIKit
import Foundation

public enum AZLogOwner : Int
{
    case All = 0
    case LW
    case SYX
    case Andrew
    case FWB
    case YQZ
}


class Switf_Log: NSObject {
    // 单例
    static let defaultLog = Switf_Log()
    
    // lazy load
    lazy var owners : NSMutableArray = {
        var tempAry = NSMutableArray ();
        tempAry.add(NSNumber(integerLiteral: AZLogOwner.All.rawValue))
        return tempAry
    } ()
    
    private override init() {
    }
    
    open func setLogOwner(_ owner: AZLogOwner) -> Void {
        self.owners .removeAllObjects()
        self.owners .add(NSNumber(integerLiteral: owner.rawValue))
    }
    
    open class func all (_ format: Any, _ args: CVarArg...){
        withVaList(args) {   (pointer: CVaListPointer) in  return
            AZLogBase.log("all", AZLogOwner.All, format, pointer)
        }
    }
    
    open class func lw (_ format: Any, _ args: CVarArg...){
        withVaList(args) {   (pointer: CVaListPointer) in  return
            AZLogBase.log("LW", AZLogOwner.LW, format, pointer)
        }
    }
    
    open class func syx (_ format: Any, _ args: CVarArg...){
        withVaList(args) {   (pointer: CVaListPointer) in  return
            AZLogBase.log("SYX", AZLogOwner.SYX, format, pointer)
        }
    }
    
    open class func az (_ format: Any, _ args: CVarArg...){
        withVaList(args) {   (pointer: CVaListPointer) in  return
            AZLogBase.log("Andrew", AZLogOwner.Andrew, format, pointer)
        }
    }
    
    open class func fwb (_ format: Any, _ args: CVarArg...){
        withVaList(args) {   (pointer: CVaListPointer) in  return
            AZLogBase.log("FWB", AZLogOwner.FWB, format, pointer)
        }
    }
    
    open class func qz (_ format: Any, _ args: CVarArg...){
        withVaList(args) {   (pointer: CVaListPointer) in  return
            AZLogBase.log("QZ", AZLogOwner.YQZ, format, pointer)
        }
    }
    
}


// MARK: 提供对外角色 log
// 为了书写便捷，使用小写
open class az{
    open class func log(_ format: Any, _ args: CVarArg...){
        withVaList(args) {   (pointer: CVaListPointer) in  return
            AZLogBase.log("Andrew", AZLogOwner.Andrew, format, pointer)
        }
    }
}




// MARK: 以下代码勿动
public class AZLogBase : NSObject {
    
    #if DEBUG
    
    static func log(_ name : String , _ log_owner : AZLogOwner , _ format: Any, _ args: CVaListPointer) {
    if (Switf_Log.defaultLog.owners.contains(NSNumber(integerLiteral: AZLogOwner.All.rawValue))  || Switf_Log.defaultLog.owners.contains(NSNumber(integerLiteral: log_owner.rawValue))) {
    NSLogv("[owner: \(name)]\n--------\n" + "\(format)" + "\n--------\n", args);
    }
    }
    
    #else
    
    static func log(_ name : String , _ log_owner : AZLogOwner , _ format: Any, _ args:CVaListPointer) {
        //  no thing to do
    }
    
    #endif
    
}
