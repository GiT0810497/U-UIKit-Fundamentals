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
    var label: UILabel!
    var label2 = UILabel()
    var toggle = true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label
        var label = UILabel()
        label.frame = CGRect.init(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        label2.frame = CGRect.init(x: 150, y: 200, width: 60, height: 60)
        label2.text = "0"
        self.view.addSubview(label2)
        
        //button
        var button = UIButton()
        button.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("increase", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: .touchUpInside)
        
        var decrementButton = UIButton()
        decrementButton.frame = CGRect.init(x: 150, y: 300, width: 60, height: 60)
        decrementButton.setTitle("decrement", for: .normal)
        decrementButton.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(decrementButton)
        decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: .touchUpInside)
        
    }
    
    func incrementCount() {
        self.count = self.count+1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        togglesBackground()
    }
    
    func decrementCount() {
        self.count = self.count-1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        togglesBackground()
    }

    
    func togglesBackground() {
        var color = UIColor()
        if toggle{
            color = UIColor.gray
        }else{
            color = UIColor.white
        }
        self.view.backgroundColor = color
        toggle = !toggle
    }



}

