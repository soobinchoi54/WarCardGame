//
//  ViewController.swift
//  WarCardGame
//
//  Created by Soobin Choi on 7/27/19.
//  Copyright © 2019 Soobin Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomize numbers
        let leftNumber = Int.random(in: 2...14)
        //print(leftNumber)
        
        let rightNumber = Int.random(in:2...14)
        //print(rightNumber)
        
        // Update the image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        //Compare random numbers and update score
        if leftNumber > rightNumber {
            //left side wins
            leftScore += 1
            
            leftScoreLabel.text = String(leftScore)
        }
        
        if leftNumber < rightNumber {
            //right side wins
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
        }
        
        else {
            //equal
        }
        
    }
    

}

