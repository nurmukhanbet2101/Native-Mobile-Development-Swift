//
//  VerticalViewController.swift
//  Dogger App
//
//  Created by Нурмуханбет Сертай on 07.12.2022.
//

import UIKit

class VerticalViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var cardTableView: UITableView!
    
    let pictures: [UIImage] = [UIImage(named: "beach.jpg")!, UIImage(named: "mountain.jpg")!, UIImage(named: "desert.jpg")!]
    let titles: [String] = ["Абай Құнанбаев", "Нұрсұлтан Назарбаев", "Төле би"]
    let descriptions: [String] = ["Сенбе жұртқа, тұрса да қанша мақтап, Әуре етеді ішіне қулық сақтап.          Өзіңе сен, өзіңді алып шығар,                   Еңбегің мен ақылың екі жақтап.", "Естеріңде болсын, тарихта қазақты ешкім ешуақытта жаулап алған жоқ. Жаулап алғысы келгендер ел ішіне іріткі салды.", "Атадан ұл туса игі,                                                             Ата жолын қуса игі.                                                               Өзіне келер ұятын                                                    Өзі біліп тұрса игі."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell", for: indexPath) as! CardCell
        
        cell.configure(picture: pictures[indexPath.row], title: titles[indexPath.row], description: descriptions[indexPath.row])
        
        return cell
    }
    
    
    @IBAction func goBackPressed(_ sender: UIButton) {  
        dismiss(animated: true)
    }
    
}
