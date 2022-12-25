//
//  Mind.swift
//  Unscramble
//
//  Created by Нурмуханбет Сертай on 23.12.2022.
//

import Foundation
class Mind{
    
    let words: [String] = ["Alma", "Kazan", "Otau", "Kagaz", "Almaty", "Astana", "Kazakhstan", "Sagat", "Oraz", "Koraz"]
    var counter: Int = 2
    var arrayIndex: Int = 1
   
    func getConfusedWord() -> String {
        
        
        let confusedWord: String = words[arrayIndex]
        
        if counter != words.count {
            counter += 1
            arrayIndex += 1
        } else {
            counter = 10
            arrayIndex = 9
        }
        
        return confusedWord
    }
    
    func getProgress() ->  (Int, Int) {
        let arrayLength = words.count
        let numberOfQuestion = counter
        
        
        return (arrayLength, numberOfQuestion)
    }
    
    func lickNumbers() {
        counter = 2
        arrayIndex = 1
    }
    

}
