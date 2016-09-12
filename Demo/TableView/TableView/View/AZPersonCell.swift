//
//  AZPersonCell.swift
//  TableView
//
//  Created by Andrew on 16/8/15.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import UIKit

class AZPersonCell: UITableViewCell {

    var avatar: UIImageView!
    var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        avatar = UIImageView.init(frame: CGRect(x: 10, y: 5, width: 35, height: 35))
        avatar.backgroundColor = UIColor.lightGray
        self.addSubview(avatar)
        nameLabel = UILabel.init(frame: CGRect(x: avatar.x+avatar.width+10, y: avatar.y, width: self.width-(avatar.x+avatar.width+10)-10, height: self.height-2*avatar.y))
        nameLabel.font=UIFont.systemFont(ofSize: 15.0)
//        nameLabel.textColor = UIColor.init(colorLiteralRed: 230, green: 230, blue: 230, alpha: 1)
        self.addSubview(nameLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
