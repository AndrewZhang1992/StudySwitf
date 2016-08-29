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
 *  第八部分：匿名函数
 *
 *************************************************/


/**
 *  code by Andrew
 *  time:
 *  func: 匿名函数
 */

/*
    匿名函数。还是和其他脚本语言一样，匿名函数有两个特性（1:闭包性，2:能访问上下文的变量）
 
 
 */

// 首先先看一个官方demo
var names = ["Chris","Alex","Ewa","Barry","Daniella"]

// 倒序排列
func bacward(str1:String,str2:String) -> Bool
{
    return str1>str2
}

var tempNames = names.sorted(isOrderedBefore: bacward)

print(tempNames) // ["Ewa", "Daniella", "Chris", "Barry", "Alex"]


//正序排列
tempNames = names.sorted(isOrderedBefore: { (s1, s2) -> Bool in
    return s1 < s2
})
print(tempNames) // ["Alex", "Barry", "Chris", "Daniella", "Ewa"]

/**
    由上可知，匿名函数 可以作为一个函数块，同时可以获取上下文的变量。也可得知 匿名函数的定义
 
    闭包表达式定义
  
 ｛ (parames) - > return type in
        
        statements
 
    ｝
 
 */

// 还是从 上面数组排序的例子中，闭包表达式还可以简写

// 1.第一种
//  Inferring Type From Context
//  从上下文推断类型

tempNames = names.sorted(isOrderedBefore: {s1,s2 in return s1 > s2})

// 2.第二种
// Implicit Returns from Single-Expression Closures
// 从单个表达式闭包的隐式返回
// 也就是说：可以省略return

tempNames = names.sorted(isOrderedBefore: {s1,s2 in s1 < s2})


// !!!: 虽然可以这样简写，但是 还是推荐 写全 闭包表达式。

/*
     多是用 typealias 来定义 闭包表达式（匿名函数），和oc 中的typedef 一样，用来取别名
 */

typealias Des_Block = (s1:String , s2: String) -> Void

func test_des( blcok:Des_Block)
{
    print("begin");
    blcok(s1: "a",s2: "b");
    print("end");
}

test_des { (s1, s2) in
    print(s1);
    print(s2);
}

/*
 begin
 a
 b
 end
 
 */




























