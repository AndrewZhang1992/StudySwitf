
//
//  TestFilePrivate.swift
//  Swift_Keyword
//
//  Created by Andrew on 16/9/19.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import Foundation

// 这是一个新的moudle 
// 可以来 测试 filepravite 和 pravite 的区别

class Person {
    
    // 文件内部私有（即在同一个文件内部，都可以被访问，但是不同文件，则不能访问）
    fileprivate var name: String
    
    // 真正的私有变量 （即 只能在该类 或者 该结构体 内部访问，任何子类 、扩展分类 都不能访问）
    private var sex:Bool
    
    init(name: String,sex:Bool) {
        self.name = name
        self.sex = sex
    }
}


class Woman: Person {
    
    func sexString() -> String {
        
        // 错误的访问，因为 sex 为 private。即 真正意义上的私有。
        
//        return self.sex ? "男" : "女"
        return "女";
    }
    
    func getName() -> String {
        // 正确访问。 因为 name 是 fileprivate 。 即 整个文件内部私有，在同一个文件中可以被访问，但是 不同文件 是不可以被访问的。
        return self.name;
    }
    
}









