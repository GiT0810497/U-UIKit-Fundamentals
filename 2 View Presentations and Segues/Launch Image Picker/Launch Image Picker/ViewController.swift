//
//  ViewController.swift
//  Launch Image Picker
//
//  Created by dhlsnow on 2017/7/13.
//  Copyright © 2017年 dhlsnow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func experiment(_ sender: UIButton) {
        let image = UIImage()
        let nextController = UIActivityViewController(activityItems: [image], applicationActivities: nil)

        self.present(nextController, animated: true, completion: nil)
    }


}

