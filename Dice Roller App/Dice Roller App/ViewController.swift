//
//  ViewController.swift
//  Dice Roller App
//
//  Created by Нурмуханбет Сертай on 05.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var indexOfDiceImage: Int = 0
    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        scoreView.text = "Your score: 1"
    }

    @IBOutlet weak var diceImageView: UIImageView!
    @IBOutlet weak var scoreView: UILabel!
    
    
    @IBAction func buttonWasPressed(_ sender: UIButton) {
    
        indexOfDiceImage = Int.random(in: 0...5)
        let arrayOfDiceImages = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "6")]
        diceImageView.image = arrayOfDiceImages[indexOfDiceImage]
        scoreView.text = "Your score: \(indexOfDiceImage + 1)"
        
    }
    

}

