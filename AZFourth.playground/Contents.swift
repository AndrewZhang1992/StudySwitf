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
 *  第四部分：控制流语法
 *
 *************************************************/

/**
   只介绍 和 其他语言 不一致的语法
 */



// 1.Repeat-While  

// The repeat-while loop in Swift is analogous to a do-while loop in other languages.

var num = 10
var totalnum = 0;
repeat{
    totalnum+=num
    num -= 1
}while num>0;
print("\(totalnum)");



// 2.  switch 语句，和 Objective-C 差距大点，所以还是 列出来

// swift 中的 switch 语句 不限于 只能 判断 int 类型，可以判断 字符串，元组，还可以判断值的区间, 还可以绑定 值


// 比较区间

switch totalnum {
case 0..<10:
    print("a");
case 10..<50:
    print("b")
case 50..<200:
    print("c")
default:
    break;
}

// 绑定变量

var point = (3,0)

// var 写到 里面
switch point {
case (var x,0):
    print("\(x)")
default:
    break;
}

// var 写到 外部
switch point {
case var (3,y):
    print("\(y)");
default:
    break;
}



// 3. where   

// 和 sql 语句中 where 一致。可以理解为 当 什么 “等于”什么 的时候

let numValue = (1,-1)

switch numValue {
case let (x, y) where x == y:
    print("\(x) == \(y)")
case let (x, y) where x == -y:
    print("\(x) != \(y)")
default:
    break
}


// 4.  标签语句 Labeled Statements

/*
 <label name>: while <condition> {
    <statements>
 }
  可以通过 对 标签的 continue 和 break 解释 循环
 */

// 官方的例子，难以快速理解 其 语法 含义。


// 例子：某人 每走一步，加 10分。总分到100分的时刻，则正常停止行走。但是 可能会遇到意外的事件，这里 我们 设置 当走到第9 步的时候，停止行走。

var totalPoint = 100
var step = 1
var tempPoint = 0

goLoop : while tempPoint < totalPoint
{
    tempPoint += 10;
    step += 1
    
    switch step {
    case 9:
        break goLoop
    default:
        continue goLoop
    }
}

print("step= \(step)  point = \(tempPoint)")


//  5. guard  条件警卫 

//  通常我们的一些方法，有些参数必须符合某些规则，才能得以保证函数方法的正确执行。和 Objective - C 中的 NSAssert 断言 一样。

func geet(person:[String:String])
{
    guard let name = person["name"] else {
        print("must have name key");
        return
    }
    print("hello \(name)!")
    
    guard let location = person["location"] else {
        print("not have  location key");
        return
    }
    print("hello \(name)! i am \(location)")
}

geet(person: ["name":"Andrew","location":"Beijing"])
geet(person: ["name":"zhangsan"])
geet(person: ["location":"beijing"])


// 6. Checking API Availability

// 检查 api 是否可用。

if #available(iOS 9, OSX 10.10, *) {
    // Use iOS 9 APIs on iOS, and use OS X v10.10 APIs on OS X
    
} else {
    // Fall back to earlier iOS and OS X APIs
    
}









