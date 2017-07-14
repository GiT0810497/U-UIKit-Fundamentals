//
//  PlayViewController.swift
//  Roshambo
//
//  Created by dhlsnow on 2017/7/14.
//  Copyright © 2017年 dhlsnow. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func randomChoose() -> chooses {
        let r = arc4random_uniform(3)
        print(r)
        if r == 0{
            return chooses.paper

        }else if r == 1{
            return chooses.scissors

        }else{
            return chooses.rock
        }
    }
    
    enum chooses {
        case rock
        case paper
        case scissors
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! ResultViewController
        let computerChoose = randomChoose()
        var discription = String()
        var picture = String()

        if segue.identifier == "showScissors"{
            switch computerChoose {
            case .paper:
                discription = "you win.Scissors Cut Paper"
                picture = "ScissorsCutPaper"
            case .rock:
                discription = "you lose.Rock Crushes Scissors"
                picture = "RockCrushesScissors"
            case .scissors:
                discription = "it's tie"
                picture = "itsATie"
            }
        }
        
        if segue.identifier == "choosePaper"{
            switch computerChoose {
            case .paper:
                discription = "it's tie"
                picture = "itsATie"
            case .rock:
                discription = "you win.Paper Covers Rock"
                picture = "PaperCoversRock"
            case .scissors:
                discription = "you lose.Scissors Cut Paper"
                picture = "ScissorsCutPaper"
            }
        }
        
        controller.resultText = discription
        controller.resultImage = picture


    }
    
    @IBAction func choosePaper(_ sender: UIButton) {
        performSegue(withIdentifier: "choosePaper", sender: self)
    }

    @IBAction func chooseRock(_ sender: UIButton) {
        let controller:ResultViewController
        controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        let computerChoose = randomChoose()
        var discription = String()
        var picture = String()
        
        switch computerChoose {
        case .paper:
            discription = "you lose.Paper Covers Rock"
            picture = "PaperCoversRock"
        case .rock:
            discription = "it's tie"
            picture = "itsATie"
        case .scissors:
            discription = "you win.Rock Crushes Scissors"
            picture = "RockCrushesScissors"
        }
        
        controller.resultText = discription
        controller.resultImage = picture
        
        self.present(controller, animated: true, completion: nil)

    }
    
    
    

}
