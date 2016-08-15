//
//  AZPeopleVC.swift
//  TableView
//
//  Created by Andrew on 16/8/15.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import UIKit

class AZPeopleVC: UIViewController {

    var personView :AZPersonTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.title="联系人列表"
        
        personView = AZPersonTableView.init(frame:self.view.bounds)
        self.view.addSubview(personView)
     
        // 填充model
        personView.dataArray = self.fillPerson()
        personView.tableView.reloadData()
    }

    func fillPerson() -> NSMutableArray {
        var array = NSMutableArray();
        var count = 0
        var nameArray = ["张三","李四","王五","陈近南","张三","李四","王五","陈近南","李四","王五","陈近南","陈近南","张三","李四","王五","王五","陈近南","张三","李四","王五","陈近南","李四","王五","陈近南","陈近南","张三","李四","王五"];
        while count <  nameArray.count {
            
            let psrson = AZPerson.init(name: nameArray[count], avatar: "")
            array.add(psrson)
            
            count = count+1
            
        }
        
        return array
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 

}
