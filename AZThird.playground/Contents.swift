//: Playground - noun: a place where people can play


/*************************************************
 *
 *  code by Andrew
 *  func: swift 3.0 语法基础
 *
 *************************************************/

import UIKit



/*************************************************
 *
 *  第三部分：类 和 结构体
 *
 *************************************************/


/**
 *  code by Andrew
 *  time:
 *  func: 类 和 结构体
 */

// 类 和 结构体 在 swift 中 几乎一致

// 1. 定义语法

struct Resolution{
    var  witdth = 0
    var height = 0
    var name: String?
    
}

class  VedioMode
{
    var resolution = Resolution()
    var frameRate = 0.0
    var name: String?
}


// 结构体 内部 默认含有构造方法
var resoulution = Resolution(witdth: 10, height: 200, name: "zhangsan")



/* 
    比较 两个类，swift中没有指针，采用 引用的方式 来访问对象，多个 引用可能 只想的是同一块内存区域上的对象，所以 判断 2个引用 是否是 同一个对象 时候 
    使用：===  等于同一个对象  !==
    
    if a === b {
 
    }else{
 
    }
 
 */

/**
   由于 类 和 结构体 很统一。所以 我们 需要根据不同需要 来 设计程序到底选择 结构体还是类？
    这需要 根据不同的需要 来 选择。
 */

// 结构体 是 值类型 传递。也就是书 结构体 赋值过程中 是 直接 赋值传递。也就是每次 传递 都是全新的一份。

var a = Resolution(witdth: 10, height: 20, name: "a")

var b = a;
b.name = "b"

print("\(a.name!)")

// 类 是 引用类型 传递。

var vedio1 = VedioMode();
vedio1.name = "zhangsan"

var vedio2 = vedio1;
vedio2.name = "lisi"

print(vedio1.name!)  // lisi


/*
    swift 中 很多基础数据类型 都是 采用 struct 设计实现的。例如：String \ Array  \ Dictionary
    所以使用 swift 中的这些类型 传递时，都是 值传递。这些 不同于 Objective - C 中 Foundation框架下的 NSString NSArray NSDictionary . Foundation 框架下的这些 采用的 class 设计实现的，所以 要想 传递时，仍然是独立一份的话，则 必须 使用 copy。
 */

var n1 = String("abc")
var n2 = n1
n2 = "def"
print(n1) // abc

var ary1:[Int] = [1,2,3]
var ary2=ary1;
ary2.remove(at: 0)
print("\(ary1.count)") // 3

var dic1 = ["name":"zhangsan"]
var dic2 = dic1
dic2["name"] = "lishi"
print(dic1["name"]!) // zhangsan























