//
//  main.swift
//  AZSix
//
//  Created by Andrew on 16/7/26.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import Foundation

/*************************************************
 *
 *  code by Andrew
 *  func: swift 3.0 语法基础
 *
 *************************************************/


/*************************************************
 *
 *  第六部分：类型投射
 *
 *************************************************/

/*
    媒体类型 基类
 */
class MediaItem{
    var _name:String
    // 构造方法
    init(name:String) {
        _name = name;
    }
}

// 歌曲
class Song: MediaItem
{
    var _artist:String
    init(name:String,artist:String) {
        _artist = artist;
        super.init(name: name)
    }
}

// 电影
class Moive: MediaItem
{
    var _director : String
    init(name:String,director:String) {
        _director = director
        super.init(name: name)
    }
}

var song = Song(name: "abc", artist: "zhangsan")
var movie = Moive(name: "hello", director: "lishi")


// 1. 检测 类型

//  is  相当于 Objective - C 中的 isKindOfClass

if song is Song{
    print("这是 歌曲")
}else{
    print("这不是 歌曲")
}


// as  转化为 可能会失败，所有 跟上？ 可选
if let v = song as? Moive
{
    print("可能是电影")
}else{
    print("这不是 电影")
}

if let v = movie as? MediaItem
{
    print("这是媒体 文件")
}else
{
    print("这不是媒体 文件")
}







