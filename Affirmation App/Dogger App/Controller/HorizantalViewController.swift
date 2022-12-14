//
//  HorizantalViewController.swift
//  Dogger App
//
//  Created by Нурмуханбет Сертай on 07.12.2022.
//

import UIKit

class HorizantalViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {        return webServicesImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionSell
        
        cell.myWebServiceImage.image = webServicesImages[indexPath.row]
        
        cell.myWebServiceImage.layer.cornerRadius = 20.0
        return cell
    }
    
     
    
    var webServicesImages: [UIImage] = [#imageLiteral(resourceName: "beach")]
    override func viewDidLoad() {
        super.viewDidLoad()

        
      
    }
    
    
    @IBOutlet weak var scrollView: UIScrollView!
}

