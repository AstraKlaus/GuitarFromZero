//
//  TenView.swift
//  MainMenu
//
//  Created by Александр Касьянов on 16.07.2021.
//

import Foundation
import SwiftUI

struct TenView: View {
    var title: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 100, alignment: .top)
                .padding()
                .shadow(color: .white, radius: 5, x: 0, y: 0)
                .foregroundColor(.white)
            VStack(alignment: .center, spacing: 10){
                Text("Уроки")
                    .font(.title3)
                    .foregroundColor(.black)
                Text(title)
                    .font(.title)
                    .foregroundColor(.black)
                
            }
            .frame(width: 310, height: 70, alignment: .center)
            
        }
    }
}

struct NeuTenView: View {
    var title: String
    @State private var checkmark = false
    @GestureState var completed = false
    var body: some View {
        VStack(alignment: .center){
            ZStack {
                
                Color(#colorLiteral(red: 0.8980392157, green:0.9333333333, blue: 1, alpha: 1))
                    .edgesIgnoringSafeArea(.all)
                    .padding()
                HStack {

                    Image(Int.random(in: 1..<3) == 1 ? "Guitar2" : "Guitar1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Rectangle())
                        .frame(width: 130,height:120)
                        
                    VStack(alignment:.leading) {
                        Text("Начинающий")
                            .font(.system(size: 24, weight: .regular, design: .rounded))
                            
                        Text("Уроки:")
                            .font(.system(size: 18, weight: .regular, design: .rounded))
                            .foregroundColor(.gray)
                        Text(title)
                            .font(.system(size: 24, weight: .regular, design: .rounded))
                        
                    }.frame(maxWidth: .infinity).frame(height: 120)
                    
                    
                }.padding(.horizontal)
                .background(
                    ZStack {
                        Image(uiImage: #imageLiteral(resourceName: "pagination"))
                            .frame(maxWidth: .infinity)
                    }
                    
                )
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue:              0.9259157777, alpha: 1)), radius: 25, x: 10, y: 10)
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 25, x: -20, y: -20)
                .multilineTextAlignment(.center)
                
            }
            
            .padding()
            
        }
    }
}



                /*
                Image("unnamed")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue:              0.9259157777, alpha: 1)), radius: 5, x: 10, y: 10)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 5, x: -10, y: -10)
                    .opacity(checkmark ? 0.3 : 1)
                    .frame(width: 50,height: 50)
                    .overlay(
                        Circle()
                            .trim(from: completed ? 0.001 :  1, to: 1)
                            .stroke(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.948161304, green: 0.7820106149, blue: 0.1665152013, alpha: 1)), Color(#colorLiteral(red: 0.5413046479, green: 0.1397194266, blue: 0.1580614746, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 3, lineCap: .round))
                            .frame(width: 50, height: 50, alignment: .topLeading)
                            .rotationEffect(Angle(degrees: 90))
                            .rotation3DEffect(
                                Angle(degrees: 180),
                                axis: (x: 1, y: 0, z: 0)
                            )
                            .animation(.easeIn)
                    )
                    
                    .foregroundColor(checkmark ? .green : .gray)
                    .font(.title)
                    .padding()
                    
                    .gesture(
                        LongPressGesture().updating($completed){
                            currentState, gestureState, transaction in
                            gestureState = currentState
                        }
                        .onEnded{value in
                            withAnimation(.spring()){
                                self.checkmark.toggle()
                            }
                        }
                    )
                    .offset(x: 136, y: 13)
                */
