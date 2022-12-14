//
//  HorizantalView.swift
//  SignIn
//
//  Created by Нурмуханбет Сертай on 14.12.2022.
//

import SwiftUI

struct HorizantalView: View {
    var body: some View {
        NavigationView(){
        
                TabView{
                    viewCards(systemImageName: "scribble.variable", title: "Sketchpad", description: "Great Job")
                    viewCards(systemImageName: "paintpalette.fill", title: "Sketchpad", description: "Great Job")
                    viewCards(systemImageName: "dial.min.fill", title: "Sketchpad", description: "Great Job")
                    viewCards(systemImageName: "scribble.variable", title: "Sketchpad", description: "Great Job")
                    viewCards(systemImageName: "paintpalette.fill", title: "Sketchpad", description: "Great Job")
                    viewCards(systemImageName: "dial.min.fill", title: "Sketchpad", description: "Great Job")
                    viewCards(systemImageName: "scribble.variable", title: "Sketchpad", description: "Great Job")
                    viewCards(systemImageName: "paintpalette.fill", title: "Sketchpad", description: "Great Job")
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
         
        }.navigationTitle("Horizontal View")
    }
}

struct HorizantalView_Previews: PreviewProvider {
    static var previews: some View {
        HorizantalView()
    }
}

