//
//  main.swift
//  ABCde
//
//  Created by Andrew on 16/7/26.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import Foundation

//: Playground - noun: a place where people can play


/*************************************************
 *
 *  code by Andrew
 *  func: swift 3.0 语法基础
 *
 *************************************************/


/*************************************************
 *
 *  第五部分：异常处理
 *
 *************************************************/

/*
 swift 提供 一个 空协议 ErrorProtocol ，一个枚举 实现 这个 ErrorProtocol 协议之后，那么这个枚举 就可以被用来 作为异常枚举
 
 引用 官方例子：我们到 售卖机上 买 饮料，会有三种情况 异常。
 
 */

enum VeningMachineError:ErrorProtocol
{
    case invalidSelection  //失效的操作
    case insufficientFouds(money:Float) // 钱不足
    case outOfStock  // 没有货物可买
}

// 货物数量
var goodsCount:Int = 2

func getDrink(good:String,money:Float) throws
{
    
    // 获取名称
    var goodsNames = ["Chips","Pretzels"]
    
    // 货物单价
    let goodsPrice:Float = 2.5
    
    guard goodsNames.contains(good) else {
        throw VeningMachineError.invalidSelection
    }
    
    guard goodsCount>0 else {
        throw VeningMachineError.outOfStock
    }
    
    guard goodsPrice<money else{
        throw VeningMachineError.insufficientFouds(money: money)
    }
    
    goodsCount-=1;
    
    print("购买成功");
    
}

// 1. 调用 带有 异常处理的方法 ，必须 加 try
//try getDrink(good: "a", money: 1.0)

// 2. 处理 异常 do - catch

do {
    try getDrink(good: "Chips", money: 3.0)
    try getDrink(good: "Chips", money: 2.0)
} catch VeningMachineError.invalidSelection{
    print("没有该货物")
}catch VeningMachineError.outOfStock{
    print("没有更多货物可供销售")
}catch VeningMachineError.insufficientFouds(let money){
    print("\(money)"+"不足")
}








