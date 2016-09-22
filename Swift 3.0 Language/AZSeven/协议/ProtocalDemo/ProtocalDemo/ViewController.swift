//
//  ViewController.swift
//  ProtocalDemo
//
//  Created by Andrew on 16/9/21.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import UIKit



class ViewController: UIViewController , InputNameViewControllerDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func testProtocalResopnse(_ sender: UIButton) {
        let inputNameVC = InputNameViewController()
        inputNameVC.title = "输入名称"
        inputNameVC.delegate = self
        self.navigationController?.pushViewController(inputNameVC, animated: true)
    }
    
    func sureName(_ name: String) {
        self.nameLabel.text=name
    }

}

