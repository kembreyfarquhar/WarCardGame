//
//  ViewController.swift
//  WarCardGame
//
//  Created by Katie on 11/23/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leftImageView.image = UIImage(named: ChangeCard.six.rawValue)
        leftImageView.image = UIImage(named: ChangeCard.two.rawValue)
        // Do any additional setup after loading the view.
    }

    
    @IBAction func dealTapped(_ sender: Any) {
        let leftRandomImage = generateRandomCard()
        let rightRandomImage = generateRandomCard()
        leftImageView.image = UIImage(named: leftRandomImage)
        rightImageView.image = UIImage(named: rightRandomImage)
        let result = compareCards(leftCard: leftRandomImage, rightCard: rightRandomImage)
        if result == "left" {
            let currentScore = Int(leftScoreLabel.text!) ?? 0
            let newScore = currentScore + 1
            leftScoreLabel.text = String(newScore)
        } else if result == "right" {
            let currentScore = Int(rightScoreLabel.text!) ?? 0
            let newScore = currentScore + 1
            rightScoreLabel.text = String(newScore)
        } else {
            return
        }
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        leftScoreLabel.text = "0"
        rightScoreLabel.text = "0"
    }
    
}

