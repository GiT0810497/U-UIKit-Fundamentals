//
//  ViewController.swift
//  Outlets and Actions
//
//  Created by dhlsnow on 2017/7/13.
//  Copyright © 2017年 dhlsnow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func incrementCount() {
        self.count = self.count+1
        self.label.text = "\(self.count)"
    }



}

