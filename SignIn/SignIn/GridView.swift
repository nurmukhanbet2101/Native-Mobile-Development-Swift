//
//  GridView.swift
//  SignIn
//
//  Created by Нурмуханбет Сертай on 14.12.2022.
//

import SwiftUI

struct GridView: View {
    private var data: [Int] = Array(1...20)
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    var body: some View {
    NavigationView(){
            ScrollView{
                LazyVGrid(columns: adaptiveColumns, spacing: 20){
                    ForEach(data, id: \.self) {
                        number in
                        ZStack{
                            gridCard(photo: "scribble.variable", title: "Sketchpad", description: "Great Job")
                        }
                    }
                }
            }
            .navigationTitle("Grid Sample")
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}

struct gridCard: View {
    let photo: String
    let title: String
    let description: String
    var body: some View {
        Rectangle()
            .foregroundColor(.gray)
            .frame(width: 170, height: 170, alignment: .center)
            .opacity(0.2)
            .cornerRadius(15)
            .overlay(
                VStack(){
                    Image (systemName: "\(photo)")
                        .resizable()
                        .scaledToFit ()
                        .frame (width: 100, height: 100)
                        .foregroundColor(.teal)
                    Text("\(title)")
                        .font(.title).bold()
                    
                    Text ("\(description)")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.secondary)
            }
        )
    }
}
