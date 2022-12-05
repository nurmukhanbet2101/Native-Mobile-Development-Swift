//
//  ViewController.swift
//  Orange Juice
//
//  Created by Нурмуханбет Сертай on 05.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var orangeJuiceImageView: UIImageView!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var readyLabel: UILabel!
    
    let arrayOfOrangePhotos = [ #imageLiteral(resourceName: "Orange Tree"), #imageLiteral(resourceName: "Half Orange"), #imageLiteral(resourceName: "Orange Juice"), #imageLiteral(resourceName: "Empty Glasses")]
    let readyLabels = [0: "Click to select a orange", 1: "Click to juice the orange", 2: "Click to drink your juice", 3: "Click to start again"]
    
    var counter: Int = 0
    
    override func viewDidLoad() {
        orangeJuiceImageView.image = arrayOfOrangePhotos[0]
        progressView.progress = 1/4
        bottomLabel.text = "It's ready for: 25%"
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
        if counter < arrayOfOrangePhotos.count - 1{
            counter = counter + 1
            orangeJuiceImageView.image = arrayOfOrangePhotos[counter]
            progressView.progress = (Float(counter)+1) / Float(arrayOfOrangePhotos.count)
            readyLabel.text = readyLabels[counter]
            bottomLabel.text = "It's ready for: \(Int((Float(counter)+1) / Float(arrayOfOrangePhotos.count)*100))%"
            
            
        }
        else{
            orangeJuiceImageView.image = arrayOfOrangePhotos[0]
            progressView.progress = 1/4
            counter = 0
            bottomLabel.text = "It's ready for: 25"
        }
        
    }
   
    
   
    
    
    

}

