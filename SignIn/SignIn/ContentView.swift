//
//  ContentView.swift
//  SignIn
//
//  Created by Нурмуханбет Сертай on 09.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
 
                VStack(spacing: 60){
                    
                    Text("Dogger App")
                        .font(.system(size: 40))
                        .foregroundColor(.blue)
        
                    Button(""){
                        print("Vertical")
                    }
                    .frame(width: 300, height: 50, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(30.0)
                    .lineSpacing(30)
                    .overlay(
                        NavigationLink("Vertical View", destination: VerticalView())
                            .foregroundColor(.white)
                    )
                    Button(""){
                        print("Vertical")
                    }
                    .frame(width: 300, height: 50, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(30.0)
                    .overlay(
                        NavigationLink("Horizontal View", destination: HorizantalView())
                            .foregroundColor(.white)
                    )

                    Button(""){
                        print("Vertical")
                    }
                    .frame(width: 300, height: 50, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(30.0)
                    .overlay(
                        NavigationLink("Grid View", destination: GridView())
                            .foregroundColor(.white)
            )
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
