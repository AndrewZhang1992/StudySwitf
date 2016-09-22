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
 *  第七部分：协议
 *
 *************************************************/
/*
 
    swift 中 协议的作用 比oc中大，不仅可以用到class ，还有在enum 和 struct 中使用，
 
    swift 中 和 oc 一致，class 都是不能多继承，但是可以遵从多个协议，如果要实现 多重继承的话，可以采用多个协议，下面就是这个例子。另外 提供一个 ios 的工程， 协议回调 的 demo
 
 */

// MARK: 消息协议
public protocol MessageProtocal {
    var from:String {get}    //  只读
    var to:String? {get set}   //  可读可写
    var content:String {get}  //
    mutating func changeContent(_ content:String) // 可以修改消息内容
    
}

// MARK: 音频协议
public protocol AudioProtocal{
    var duration: Float? {get}  //只读
    var audiofile: String? {get}
    
    mutating func addAudio(file: String,duration :Float)
}

// 文本消息
open class TextMessage: NSObject ,MessageProtocal {
    open var from :String = "myslef"
    open var content = "这是一条文本消息"
    open var to: String?
    
    public func changeContent(_ content: String) {
        self.content = content
    }
}

// 音频消息
open class AudioMessage : NSObject , MessageProtocal,AudioProtocal{
    
    open var audiofile: String?
    open var duration: Float?
    open var from :String = "myslef"
    open var content = "这是一条音频消息"
    open var to: String?
    
    public func addAudio(file: String, duration: Float) {
        self.audiofile = file
        self.duration = duration
    }
    
    public func changeContent(_ content: String) {
        self.content = content
    }
    
}






