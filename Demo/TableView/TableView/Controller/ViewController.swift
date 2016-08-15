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
        
        tableView = UITableView.init(frame:  CGRect(x: 0, y: 20, width: self.view.bounds.width, height: self.view.bounds.height-20), style: UITableViewStyle.plain)
        tableView.delegate=self
        tableView.dataSource=self
        tableView.tableFooterView=UIView.init()
        self.view .addSubview(tableView)
        
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

