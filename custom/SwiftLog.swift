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
    
    public func setLogOwner(_ owner: AZLogOwner) -> Void {
        self.owners .removeAllObjects()
        self.owners .add(NSNumber(integerLiteral: owner.rawValue))
    }
    
    static func all (_ format: String, _ args: CVarArg...){
        AZLogBase.log("all", AZLogOwner.All, format, args)
    }
    
    static func lw (_ format: String, _ args: CVarArg...){
        AZLogBase.log("LW", AZLogOwner.LW, format, args)
    }
    
    static func syx (_ format: String, _ args: CVarArg...){
        AZLogBase.log("SYX", AZLogOwner.SYX, format, args)
    }
    
    static func az (_ format: String, _ args: CVarArg...){
        AZLogBase.log("Andrew", AZLogOwner.Andrew, format, args)
    }
    
    static func fwb (_ format: String, _ args: CVarArg...){
        AZLogBase.log("FWB", AZLogOwner.FWB, format, args)
    }
    
    static func qz (_ format: String, _ args: CVarArg...){
        AZLogBase.log("QZ", AZLogOwner.YQZ, format, args)
    }
    
}



public class AZLogBase : NSObject {
    
    #if DEBUG
    
    static func log(_ name : String , _ log_owner : AZLogOwner , _ format: String, _ args: CVarArg...) {
        if (Switf_Log.defaultLog.owners.contains(NSNumber(integerLiteral: AZLogOwner.All.rawValue))  || Switf_Log.defaultLog.owners.contains(NSNumber(integerLiteral: log_owner.rawValue))) {
            NSLog("[owner: %@]\n--------\n" + format + "\n--------\n", name, args);
        }
    }
    
    #else
    
    static func log(_ name : String , _ log_owner : AZLogOwner , _ format: String, _ args: CVarArg...) {
        //  no thing to do
    }
    
    #endif
    
}
