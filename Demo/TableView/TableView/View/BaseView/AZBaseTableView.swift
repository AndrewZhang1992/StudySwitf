//
//  AZBaseTableView.swift
//  TableView
//
//  Created by Andrew on 16/8/15.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import UIKit

/**
 *  code by Andrew
 *  time: 16 - 08 -15 14:12
 *  func:  面向对象中，优先使用组合而不是继承。所以这里使用组合设计模式，来设计一个基类的tableview。这样外部可以更轻松的使用tableview。由于采用组合，内部也很好实现 对象之间的 松耦合。
 */
class AZBaseTableView: UIView,UITableViewDelegate,UITableViewDataSource {
    
    var tableView : UITableView!
    lazy var dataArray = { return NSMutableArray() }();
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        tableView = UITableView.init(frame: frame, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        self.addSubview(tableView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK:  UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    
    // 子类需要重写该方法
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat{
        return 0.01
    }
    
    
}
