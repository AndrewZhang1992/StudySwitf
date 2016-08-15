//
//  AZPerson.swift
//  TableView
//
//  Created by Andrew on 16/8/15.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import UIKit

class AZPerson: NSObject {
    
    var name : String?
    var avatar :String?
    
    init(name:String,avatar:String)
    {
        self.name = name
        self.avatar = avatar
    }
    
}
