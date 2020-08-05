//
//  ViewController.swift
//  WarCardGame
//
//  Created by Christopher Ching on 2019-02-21.
//  Copyright © 2019 Christopher Ching. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var cpuCard: UIImageView!
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var cpuScore: UILabel!
    
    var leftScore = 0
    var rightScore = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func dealButtonTapped(_ sender: Any) {

        let playerCardNumber = Int.random(in: 2...14)
        let cpuCardNumber = Int.random(in: 2...14)
        
        playerImageView.image = UIImage(named: "card\(playerCardNumber)")
        cpuCard.image = UIImage(named: "card\(cpuCardNumber)")
        
        // Player wins
        if playerCardNumber > cpuCardNumber {
            leftScore += 1
            playerScore.text = String(leftScore)
        }
            
        // CPU wins
        else if playerCardNumber < cpuCardNumber {
            rightScore += 1
            cpuScore.text = String(rightScore)
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        
        playerImageView.image = UIImage(named: "back")
        cpuCard.image = UIImage(named: "back")
        
        leftScore = 0
        rightScore = 0
        playerScore.text = String(leftScore)
        cpuScore.text = String(rightScore)
        
    }
}
