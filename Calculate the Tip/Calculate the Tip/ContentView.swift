//
//  ContentView.swift
//  Calculate the Tip
//
//  Created by Нурмуханбет Сертай on 13.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var tip: String = ""
    @State private var amazing = false
    @State private var good = false
    @State private var okay = false
    @State private var rounding = false
    @State private var result = 0.0
    @State private var intResult = 0
    @State private var textResult = ""
   
   
    
    func caluclate(){
        if amazing {
            result = Double(tip)! * 1.2
        }
        else if good {
            result = Double(tip)! * 1.18
        }
        else {
            result = Double(tip)! * 1.15
        }
        intResult = Int(result)
        
        
        if rounding{
            textResult = String(intResult)
        }
        else{
            textResult = String(result)
        }
    
        
    }
    
    var body: some View {
        
        ZStack{
            Color(.white)
                .edgesIgnoringSafeArea(.all)
            VStack(){
                Text("Calculate the Tip")
                    .font(.system(size: 30.0))
                    .fontWeight(.heavy)
                    .padding()
                Spacer()
                VStack(spacing: 40){
                    TextField("The tip", text: $tip)
                        .padding()
                        .background(Color.black.opacity(0.05))
                        .frame(width:300, height: 50)
                        .cornerRadius(10)
                    Toggle(isOn: $amazing) {
                        Text("Amazing (20%)")
                    }
                    .frame(width: 290, alignment: .center)
                    Toggle(isOn: $good) {
                        Text("Good (18%)")
                    }
                    .frame(width: 290, alignment: .center)
                    Toggle(isOn: $okay) {
                        Text("Okay (15%)")
                    }
                    .frame(width: 290, alignment: .center)
                    Toggle(isOn: $rounding) {
                        Text("Rounding")
                    }
                    .frame(width: 290, alignment: .center)
                    
                    
                   
                        Text("Your result is: \(textResult)")
                  
                   
                    
                    
                }
                    Spacer()
                Button("Calculate") {
                
                    caluclate()
                }
                
                    

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

