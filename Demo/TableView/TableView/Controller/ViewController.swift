//
//  ViewController.swift
//  TableView
//
//  Created by Andrew on 16/8/15.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    private var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        self.title = "简单 tableview demo "
        
        NSLog("nslog 开始了")
        
        // 延时 
        
        delay(3) { 
            NSLog("延时3s 来了")
        }
        
        let task = delay(5) {
            NSLog("哈哈哈")
        }
        task.cancel()
        
        
        
        // 两种便捷 nslog
        
        // 第一种 swift_log
         Switf_Log.az("%@%ld%@%f","开心",12,"天",1.50);
        
        // 第二种 az.log
        az.log("我是第 %@ 种便捷log", "二")
        
        
        
        Switf_Log.all("开始一个简单的swift demo，从这里开始学习swift3.0");
        
        // 设置打印 用户 ,不设置 默认只打印出 all
        Switf_Log.defaultLog.setLogOwner(AZLogOwner.Andrew);
        
        
        tableView = UITableView.init(frame:  CGRect(x: 0, y: 0, width: AZSCREEN.WIDTH, height: AZSCREEN.HEIGHT), style: UITableViewStyle.plain)
        tableView.delegate=self
        tableView.dataSource=self
        tableView.tableFooterView=UIView.init()
        self.view .addSubview(tableView)

        tableView.backgroundColor = UIColor.fromRGB(0x038ae6)
        
     
        if AZTools.IS_IPHONE6 {
            Switf_Log.all("看看海");
            Switf_Log.az("400 px 转化为 %f dp", AZTools.convert_scale(400));
            Switf_Log.az("是iphone6");
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "cell")
        
        cell.textLabel?.text=String(format: "i am %ld", indexPath.row)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("u select ",indexPath.row)
        let peopleVC = AZPeopleVC.init()
        self.navigationController?.pushViewController(peopleVC, animated: true)
    }
    
}

