//
//  viewCards.swift
//  SignIn
//
//  Created by Нурмуханбет Сертай on 14.12.2022.
//

import SwiftUI

struct viewCards: View {
    let systemImageName: String
    let title: String
    let description: String
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .foregroundColor(.gray)
                .frame(width: 375, height: 330, alignment: .center)
                .opacity(0.2)
                .cornerRadius(15)
                .overlay(
                    VStack(){
                        Image (systemName: systemImageName)
                            .resizable()
                            .scaledToFit ()
                            .frame (width: 300, height: 200)
                            .foregroundColor(.teal)
                        Text(title)
                            .font(.title).bold()
                        
                        Text (description)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.secondary)
                    }
                )
        }
        .padding(.horizontal, 40)
    }
}

struct viewCards_Previews: PreviewProvider {
    static var previews: some View {
        viewCards(systemImageName: "", title: "", description: "")
    }
}
