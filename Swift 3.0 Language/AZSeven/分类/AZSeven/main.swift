//
//  main.swift
//  AZSeven
//
//  Created by Andrew on 16/7/26.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import Foundation

/*************************************************
 *
 *  code by Andrew
 *  func: swift 3.0 语法基础
 *
 *************************************************/


/*************************************************
 *
 *  第七部分：分类(扩展) 和 协议
 *
 *************************************************/

// 分类 （扩展 Extensions）

// swift 中的 扩展 还是和 标准 Objective-C 2.0 中 一致，扩展 只能 添加 方法，且 不可 重写 原类中已经 存在的方法，也可以在 分类中  实现 多个 协议。关于 成员变量 ： 官方文档中指出：可以为添加 计算型 类型的成员变量 或者 给 计算型实例 添加成员变量 。
/*
 Extensions in Swift can:
 
    Add computed instance properties and computed type properties
    Define instance methods and type methods
    Provide new initializers
    Define subscripts
    Define and use new nested types
    Make an existing type conform to a protocol
 
 */

class Person {
    var name:String
    init(name:String) {
        self.name = name
    }
}

extension Person
{
    var sex:Bool { return true} // 计算类型 成员变量
    func sayHello()
    {
        let sexStr:String = self.sex ? "boy" : "girl"
        print(" hello ! every body! my name is"+self.name+"and, i am a "+sexStr)
    }
}

var p = Person(name: "zhansan")

p.sayHello()



























