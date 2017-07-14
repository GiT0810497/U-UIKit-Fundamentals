//
//  ResultViewController.swift
//  Roshambo
//
//  Created by dhlsnow on 2017/7/14.
//  Copyright © 2017年 dhlsnow. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var discription: UILabel!
    
    var resultText = String()
    var resultImage = String()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        discription.text = resultText
        image.image = UIImage(named: resultImage)
    }

    @IBAction func dismiss(_ sender: UIButton){
        dismiss(animated: true, completion: nil)
    }
    

}
