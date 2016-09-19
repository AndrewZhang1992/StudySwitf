//
//  TestOpenPublic.swift
//  Swift_Keyword
//
//  Created by Andrew on 16/9/19.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import Foundation

// 测试 open 以及 public

// 使用public 修饰了 class。标示该类 只能在这个moudle被继承。不同moudle不能被继承
//  但是外部可以访问 该类
public class Car{
    
    // 该方法，可以被不同moudle访问，但是不能被不同moudle重载
    public func run(){}
    
    open func test(){}
    
    // 该方法，只能被访问，任何地方都不能重载
    public final func idendif(){ print("this is a  car！") }
    
}

// 这样的写法错误。因为基类 是public ，子类的访问权限不能超过 基类

//open class BigCar:Car{
//    
//}


// 默认和基类的访问 权限 一致, 所以 BigCar 就是 public
class BigCar: Car {
    
    
    // 重载  idendif 不可能
//    override func idendif() {
//        
//    }
    
    override func run() {
        print("run ....")
    }
    
    override func test() {
        print("open test")
    }
    
}













