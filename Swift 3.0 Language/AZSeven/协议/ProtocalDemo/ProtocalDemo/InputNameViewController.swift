//
//  InputNameViewController.swift
//  ProtocalDemo
//
//  Created by Andrew on 16/9/21.
//  Copyright © 2016年 Andrew. All rights reserved.
//

import UIKit


@objc public protocol InputNameViewControllerDelegate : NSObjectProtocol  {
    
    @objc optional  func sureName(_ name: String)
    
}

class InputNameViewController: UIViewController {
    
    weak open var delegate : InputNameViewControllerDelegate?
    let inputText = UITextField();
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.white
        // Do any additional setup after loading the view.
        
        inputText.frame = CGRect(x: 40, y: 100, width: 300, height: 30)
        inputText.backgroundColor = UIColor.yellow
        self.view.addSubview(inputText)
        
        
        let sureBtn = UIButton(type: .system)
        sureBtn.frame=CGRect(x: 40, y: 160, width: 300, height: 30)
        sureBtn .setTitle("确定", for: .normal)
        sureBtn.addTarget(self, action: #selector(responseName), for: .touchUpInside)
        self.view.addSubview(sureBtn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    dynamic private func responseName(){
        
        self.delegate?.sureName?(self.inputText.text!)

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
