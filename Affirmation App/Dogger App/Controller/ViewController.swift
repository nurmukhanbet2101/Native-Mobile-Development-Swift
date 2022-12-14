//
//  ViewController.swift
//  Dogger App
//
//  Created by Нурмуханбет Сертай on 07.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func verticalButtom(){
        
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "goToVertical") as! VerticalViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
       
    
    }

    
    

   
    
    
}


