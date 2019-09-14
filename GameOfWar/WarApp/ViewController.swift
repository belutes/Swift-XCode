//
//  ViewController.swift
//  WarApp
//
//  Created by Brian Lutes on 9/12/19.
//  Copyright © 2019 Brian Lutes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // points to the left card imageview
    @IBOutlet weak var leftImageView: UIImageView!
    // points to the right card imageview
    @IBOutlet weak var rightImageView: UIImageView!
    // points to the player score label
    @IBOutlet weak var leftScoreLabel: UILabel!
    // points to the CPU score label
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    // Properties for keeping score
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    // IBAction

    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomize two numbers and add two makes rand. num between 2-14
        // instead of 0-12
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        // Change the image view (card image)
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        // Compare the numbers
        if leftRandomNumber > rightRandomNumber{
            // Update the score
            leftScore += 1
            // Update the label
            leftScoreLabel.text = String(leftScore)
        }
        else if rightRandomNumber > leftRandomNumber{
            // Updaate the score
            rightScore += 1
            // Update the label
            rightScoreLabel.text = String(rightScore)
        }
        else if leftRandomNumber == rightRandomNumber{
            // No code provided. This is where the tutorial ends
            // Will come back and do something with this at a later date.
        }
        
    }
}

