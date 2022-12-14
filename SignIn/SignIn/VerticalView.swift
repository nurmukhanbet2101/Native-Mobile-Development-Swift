//
//  VerticalView.swift
//  SignIn
//
//  Created by Нурмуханбет Сертай on 14.12.2022.
//

import SwiftUI

struct VerticalView: View {
    var body: some View {
        ZStack{
            Color(.white)
                .edgesIgnoringSafeArea(.all)
        NavigationView(){
                ScrollView {
                    VStack(spacing: 10) {
                        viewCards(systemImageName: "scribble.variable", title: "Sketchpad", description: "Great Job")
                        viewCards(systemImageName: "paintpalette.fill", title: "Sketchpad", description: "Great Job")
                        viewCards(systemImageName: "dial.min.fill", title: "Sketchpad", description: "Great Job")
                        viewCards(systemImageName: "scribble.variable", title: "Sketchpad", description: "Great Job")
                        viewCards(systemImageName: "paintpalette.fill", title: "Sketchpad", description: "Great Job")
                        viewCards(systemImageName: "dial.min.fill", title: "Sketchpad", description: "Great Job")
                        viewCards(systemImageName: "scribble.variable", title: "Sketchpad", description: "Great Job")
                        viewCards(systemImageName: "paintpalette.fill", title: "Sketchpad", description: "Great Job")
                        viewCards(systemImageName: "dial.min.fill", title: "Sketchpad", description: "Great Job")
                    }
                    .padding()
                }
                .padding()
                .navigationTitle("Vertical View")
                .frame(height: 800)
            }
        }
    }
}

struct VerticalView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalView()
    }
}

