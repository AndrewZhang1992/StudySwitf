//
//  main.swift
//  Swift_Keyword
//
//  Created by Andrew on 16/9/19.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import Foundation

/*************************************************
 *
 *  code by Andrew
 *  func: swift 3.0 语法基础
 *  特别章节：关键字
 *
 *************************************************/




/*************************************************
 *   关键字：open   public  final  fileprivate  private
 *
 ========= 阐述 =============
 
 swift 3.0 中 新增加了两种访问权限的关键字 fileprivate 和 open
 
 
 open: 完全开放。即在任何地方，该类 或 结构体 或者 该方法 都能被访问，都可以被 继承，都可以重载。
 public: moudle 内部公开。即在同一个moudle内部，可以被访问，被继承，被重载。但是不再同一个moudle中，这个类只能被访问，但是不能被继承或被重载。
 final : 常量标记。即该方法只能在 类部 被访问，在任何地方都不能override。一般用于标记类的方法。也可以用于标记 类，但是这样一般没有意义。
 
 
 （
 open 和 public 在文件外部，都是可以被访问的，区别就是在moudle外部，能不能被继承或在被重载  --- 查看文件：TestOpenPublic.swift
 !!!: 注意⚠️ open 和 public 是针对的moudle来说的（*.module.map）。如果只是简单swift 文件，open 和public 没有任何区别。所以，对于不写动态库或者静态库的人来说。这两个关键字 在开发中基本没有区别，但是 apple 提倡 使用 open。
 ）
 
 
 
 
 fileprivate: 文件内私有。即在同一个文件内部，都可以被访问，但是不同文件，则不能访问
 private : 真正的私有变量 。即只能在该类 或者 该结构体 内部访问，任何子类 、扩展分类 都不能访问
 (可以查看文件：TestFilePrivate.swift)
 
 ===========================
 *
 **************************************************/


// 测试 open 和 public

class SmallCar: Car {
    override func run() {
        print("small car run")
    }
}


var bigCar = BigCar();

bigCar.run();
bigCar.test();
bigCar.idendif();

var smallCar = SmallCar();
smallCar.run()







