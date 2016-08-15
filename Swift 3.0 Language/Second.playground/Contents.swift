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
 *  第二部分：枚举
 *
 *************************************************/


/**
 *  code by Andrew
 *  time:
 *  func: 枚举
 */

/*
    swift 中的枚举 不像 c 语言中的枚举，必须设置 int 值 为了每一个枚举，swift中的枚举，可以不必为了每一个枚举设置 值，但是 也可以设置。
        如果 要设置 枚举具体值 ，必须 指定 枚举返回 raw 的类型。
 */

// 1. 定义 一个 枚举

enum  CompassPoint{
    case north
    case south
    case east
    case west
}

print("\(CompassPoint.north)")



// Raw Values

// 定义一个枚举 带有 raw 返回类型

enum Chars:String
{
    case a = "a1"
    case b = "b1"
    case c = "c1"
    case d = "d1"
}

print("\(Chars.a.rawValue)")

// 获取一个枚举
let aa = Chars(rawValue:"b1")
print("\(aa)")



// 自动递增
enum Nums:Int
{
    case a = 1
    case b
    case c
}

print("\(Nums.b.rawValue)")

let cc = Nums(rawValue:3)
print("\(cc)")



// 不赋值

// 默认从 0 开始 自动递增
enum Anums:Int
{
    case a,b
    case c
}

print("\(Anums.a.rawValue)")

// 如果raw 是 字符串，则 自动将 枚举 赋值 给 raw
enum Strs:String
{
    case a
    case b
    case c
}
print("\(Strs.a.rawValue)")

// 枚举 可以 直接 使用 switch 语句, 不像 c 语言中 必须要是  int 类型才可以

let str = Strs.b
switch str {
case .a:
    print("\(Strs.a.rawValue)")
case .b:
    print("\(Strs.b.rawValue)")
case .c:
    print("\(Strs.c.rawValue)")
}


/*
    Associated Values （多个类型的值）
    这种类型的枚举 实际上作用 和 结构体很像了，这类型的枚举 也一般 不会用来记录 不同状态。先了解，看看 之后 有没有 更大的用处
 */

// 定义
enum QRcode
{
    case upc(Int,Int,Int,Int)
    case qrCode(String)
}
// 使用
var qr = QRcode.upc(103,104,105,192)

qr = QRcode.qrCode("xAXdaew")
switch qr {
case var .upc(num1,num2,num3,num4):
    print("num1=\(num1),num2=\(num2),num3=\(num3),num4=\(num4)")
case var QRcode.qrCode(code):
    print(code)
}




























