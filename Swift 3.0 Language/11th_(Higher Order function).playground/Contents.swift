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
 *  第十一部分：高阶函数（map、filter、reduce）
 *
 *************************************************/

/**
 swift 是一种支持多种范式编程思想的一门语言，（即 支持 面向对象、面向协议、函数响应式）
 
 而swift 为了让我们能够快速使用函数响应式编程，故对 “集合容器” 提供了 “高阶函数”的支持。
 
 BTW: 如果之前在使用 OC 中 已经使用过RAC框架的话，那么学习高阶函数就会容易很多。
 
 */


// 1. map
//  map ：遍历转换。将容器内的元素可以进行各种转换。

// eg1

let array = [1,2,3] // 数组中是 Int

let strArray = array.map{
    String($0)
}

print(strArray)

// eg2  数组里有一个3个学生，取出每个学生的名字并组成一个新的数组

// swift 中 首先考虑 面向协议
struct Student{
    var name:String
    var sex:Bool
    var grade:String
    var age:Int
    
    init(name:String ,sex:Bool,grade:String,age:Int) {
        self.name = name
        self.sex = sex
        self.grade = grade
        self.age = age
    }
}

let stu1 = Student(name: "张三", sex: true, grade: "一年级", age: 7)
let stu2 = Student(name: "王晓璐", sex: false, grade: "一年级", age: 7)
let stu3 = Student(name: "刘汉", sex: true, grade: "一年级", age: 8)

let stuArray = [stu1,stu2,stu3]

// 取出每个学生姓名
let nameArray = stuArray.map({
    $0.name
})

print(nameArray)

// 2. filter
// filter : 条件过滤。 将遍历集合中的元素，在满足一定的条件下，才能输入，从而到达快速过滤。

// 说明：使用filter 必须有一个条件（这个值必须返回是 Bool 类型）
//          filter(_ isIncluded: (Element) throws -> Bool)


// eg 1 
let array2 = [1,2,3,4,5,6,7,8]

// 输入所有的偶数
print(array2.filter({
    return $0 % 2 == 0
}))

// eg2
// 接着上面学生的示例，现在要求输出所有的女生的信息
print(stuArray.filter({
    return !$0.sex
}))

// eg3 
// 现在要求输出所有女生的姓名
print(stuArray.filter({
    return !$0.sex
}).map({
    $0.name
}))

// 3.reduce  计算。

// eg1  计算数组中所有值的和
let num1 = [1,2,3]
let num2 = num1.reduce(0, {
    $0 + $1  // $0 是每次计算的结果，$1 是参与计算的下一个元素
})
/*
    上面的写法，相当于    0 + 1 = 1 ==> $0 + $1 = $0
                                   1 + 2 = 3 ==> $0 + $1 = $0
                                   3 + 3 = 6 ==> $0 + $1 = $0
 */


// 如果上面这种写法看不懂，可以全写：
let num3 = num1.reduce(0) { (a, b) -> Int in
    return a+b  // a 是每次计算的结果 b 是参与计算的下一个元素
}


/*******************************
    下面来搞一点综合性的，比较无实际意义，但是又可以锻炼大家的掌握的示题。
 *******************************/

// 1. 数组中元素为[1,2,3,4]，写出 map为[2,3,4,5]的代码，然后在利用reduce来实现。

let egNum = [1,2,3,4]
// map ：
let map_egNum = egNum.map({
    $0+1
})
// reduce:
var reduce_egNum : [Int] = []
egNum.reduce(0, {
    reduce_egNum.append($1+1)
    return $0
})

print(reduce_egNum)

// 2. 有这样一个数组 [1,8,2,4,5],请利用reduce 找出该数组中的最大值

let eg2_num = [1,8,2,4,5]
var max = eg2_num[0]
eg2_num.reduce(0, {
    if max < $1{
        max = $1
    }
    return $0
})
print(max)

// 3. 有这样一个数组 [1,2,3,4],利用 reduce 一次 取出数组中奇数的和、以及偶数乘积
let eg3_num = [1,2,3,4]
var num_total = 0
var x_total = 1
eg3_num.reduce(0, {
    if $1 % 2 == 0{
        x_total  = x_total * $1
    }else{
        num_total = num_total + $1
    }
    return $0
})

print(num_total)
print(x_total)

//  4. 有这样一个数组  [1,5,2,4,5,2] ，利用你所知道的高价函数，链式调用求该数组中偶数的平方和。
let eg4_num = [1,5,2,4,5,2]

let total = eg4_num.filter({
    return $0 % 2 == 0  // 2 4 2
}).map({
    $0*$0  // 4 16 4
}).reduce(0, {
    $0 + $1
})

print(total)











