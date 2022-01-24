//
//  BackGroundView.swift
//  MainMenu
//
//  Created by Александр Касьянов on 17.07.2021.
//

import Foundation
import SwiftUI


struct BackGroundView: View {
    var body: some View{
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]), startPoint: .top, endPoint: .bottom)
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
            ZStack{
                Image("unnamed")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 400,height: 400)
                    .offset(x: 150, y: -200)
                    .foregroundColor(Color.purple.opacity(0.5))
                    .blur(radius: 8)
                Circle()
                    .frame(width: 300,height: 300)
                    .offset(x: -120, y: -80)
                    .foregroundColor(Color.blue.opacity(0.5))
                    .blur(radius: 8)
            }
        }
    }
}
