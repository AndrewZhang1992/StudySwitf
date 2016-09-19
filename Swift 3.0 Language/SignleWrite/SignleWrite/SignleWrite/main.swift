//
//  main.swift
//  SignleWrite
//
//  Created by Andrew on 16/9/19.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import Foundation


/*************************************************
 *
 *  第十部分：单例的写法
 *
 *************************************************/



/*
    单例一般是不考虑能被继承的，下面提供3种单例的写法。
    一般情况下，使用 第一种 单行单例的方法 即可。
 */


/*
    第一种：也叫 swift中的 单行单例
                ( 线程安全 )
 */

final class SignleOne{
    static let ShareSignle = SignleOne();
    var name:String?
    
    private init(){}
}



var a = SignleOne.ShareSignle;
a.name = "abc";

var  b = SignleOne.ShareSignle;
print("b name is "+b.name!)
b.name = "haha"
print("a name is "+a.name!)



/*
    第二种 ：oc 翻译过来的写法，使用 dispatch_once_t 
 
                !!!: 注意 在swift 3.0 中 dispatch_once 已经不可用，使用  lazily initialized globals or static properties and get the same thread-safety and called-once guarantees as dispatch_once provided.
        
                 let myGlobal = { … global contains initialization in a call to a closure … }() _ = myGlobal // using myGlobal will invoke the initialization code only the first time it is used.
 
                 (线程安全)
 */


/* 虽然swift3.0 中不可以使用 dispatch_once_t，但是本着学习的态度，还是列出来，在switf2.3之前还是可以使用的 */


// dispatch_once_t
//final class SignleTwo{
//    class func ShareSignle -> SignleTwo{
//        
//        struct Signleton{
//            static var once_token: dispatch_once_t = 0
//            static var signle:SignleTwo?
//        }
//        dispatch_once(&Signleton.once_token,{
//            Signleton.signle = SignleTwo()
//        })
//        return Signleton.signle!;
//    }
//}

// 使用swift 3.0

final class SignleTwo{
    static private let signle: SignleTwo = {
        return SignleTwo()
    }();
    
    class func ShareSignle() -> SignleTwo{
        return signle
    }
    
    private init(){}
    
    var name:String?
}


var testA = SignleTwo.ShareSignle()
testA.name = "TestA"

var testB = SignleTwo.ShareSignle()
print("testB name is "+testB.name!)
testB.name = "TestB"
print("testA name is "+testA.name!)



/* 
    第三种 线程安全
 */

final class SignleThree{
    
    static var ShareSignle : SignleThree{
        struct Static {
            static let instance : SignleThree = SignleThree()
        }
        return Static.instance
    }
}







