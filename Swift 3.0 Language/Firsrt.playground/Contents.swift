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
 *  第一部分：基础类型 （字符串\集合容器）
 *
 *************************************************/


/**
 *  code by Andrew
 *  time: 16-07-26 11:05
 *  func: 字符串 字符
 */

var s = String()

if s.isEmpty {
    print("a")
}else{
    print("b")
}

let dog = "this is a 🐶"

for  c in dog.characters {
     print(c)
}

print(dog.lengthOfBytes(using: String.Encoding.utf8))



// 从字符串中 读取 数字
let numbers:CharacterSet = CharacterSet(charactersIn: "0123456789")
var numStr = "ab2c3.1.0"
var tempNumStr:String = ""
for scac in numStr.unicodeScalars {
    if numbers.contains(scac) {
       tempNumStr=tempNumStr .appending("\(scac)")
    }
}
print(tempNumStr)


/**
 *  code by Andrew
 *  time: 16-07-26 11:48
 *  func: 集合类型
 */

// 1. 创建 空数组
var ary = []

ary = ary.adding("1")
ary = ary.adding(2)

print(ary.count)

ary = Array(arrayLiteral: "a","b",1)



let  abc = [1,2,3,4]

var total=0
for (index,item) in abc.enumerated().reversed().filter({ (index,item) -> Bool in
    return (index % 2==1)
}){
    print(index)
    print(item)
    total+=item
}

print(total)



// 字符串数组

var strAry: [String]=[]

// 添加一个元素

strAry.append("A")

// 叠加 数组
strAry += ["B"]

// 不可以 叠减
//strAry -= ["A"]

strAry .remove(at: 0)

// 2. 创建 集合容器

var strSet: Set<String> = []

strSet.insert("abc")
strSet.insert("cde")
strSet.insert("abc")

strSet.remove("abc")

strSet

// 3. 字典

var nameDic:[String:String] = [:]

nameDic["li"]="lijiang"
nameDic["zhang"]="zhangsan"
nameDic["lis"]="lisa"

for name in nameDic.values {
    print(name)
}

// 是否存在键

// 1. let 常量法
if let name = nameDic["wang"] {
    // 存在
    print(name)
}else{
    print("no one")
}

// 2. index
if (nameDic.index(forKey: "wang") != nil) {
    // 存在
}else{
    print("a gril is no one")
}








































