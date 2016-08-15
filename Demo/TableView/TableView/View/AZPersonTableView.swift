//
//  AZPersonTableView.swift
//  TableView
//
//  Created by Andrew on 16/8/15.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import UIKit

class AZPersonTableView: AZBaseTableView {
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "AZPersonCell") as? AZPersonCell
        if  (cell == nil) {
            cell = AZPersonCell.init(style: .default, reuseIdentifier: "AZPersonCell") as! AZPersonCell
        }
        let person = self.dataArray[indexPath.row] as! AZPerson
        cell!.nameLabel.text = person.name
        
        return cell!;
    }

}
