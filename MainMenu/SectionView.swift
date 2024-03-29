//
//  SectionView.swift
//  MainMenu
//
//  Created by Александр Касьянов on 17.07.2021.
//

import Foundation
import SwiftUI
import Combine


struct SectionView: View {
    var section: Section
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 100, alignment: .top)
                .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).opacity(0.3))
                .shadow(color: .gray, radius: 5, x: 0, y: 0)
            HStack(spacing: 10){
                Text("\(sectionData.firstIndex(where: {$0.text == section.text})!)")
                    .font(.title)
                    .foregroundColor(.black)
                    .frame(width: 50, height: 100)
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .frame(width: 2, height: 90)
                    .foregroundColor(.black.opacity(0.3))
                Text(section.text.capitalized)
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .frame(height: 100)
            }.frame(width: 350, height: 100,alignment: .leading)
            
            
        }
        .padding(.leastNormalMagnitude)
    }
}



struct NeuSectionView: View {
    @Environment(\.colorScheme) var scheme
    @EnvironmentObject var completed: SettingsStore
    var section: Section
    var body: some View {
        ScrollView {
            ForEach(numbersData[sectionData.firstIndex{$0.text == section.text}!]..<numbersData[sectionData.firstIndex{$0.text == section.text}!]+11) { item in
                NavigationLink(destination: Lesson(section: sectionData[item], youtubeLink: youtubeData[item], song: songsData[(item >= 0 && item <= 10) ? item : 0])) {
                    ZStack {
                        Color(scheme == .light ? #colorLiteral(red: 0.8980392157, green:0.9333333333, blue: 1, alpha: 1) : .black)
                            .edgesIgnoringSafeArea(.all)
                        Text(sectionData[item].title + sectionData[item].text)
                            .font(.system(size: 20, weight: .regular, design: .rounded))
                            .foregroundColor(.primary)
                            .padding(.horizontal)
                            .frame(width: 350, height: 100,alignment: .leading)
                            .background(
                                ZStack {
                                    Image(uiImage: #imageLiteral(resourceName: "pagination"))
                                   
                                    Image("unnamed")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .clipShape(Circle())
                                        .frame(width: 40,height: 50)
                                        .offset(x: 140, y: 20)
                                        .blur(radius: 1)
                                        .opacity(0.2)
                                }
                                
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                            .shadow(color: scheme == .light ? Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue:              0.9259157777, alpha: 1)) : Color(#colorLiteral(red: 0.1154422089, green: 0.1154691651, blue: 0.1154386625, alpha: 1)), radius: 25, x: 20, y: 20)
                            .shadow(color: scheme == .light ? Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) : Color(#colorLiteral(red: 0.09178318828, green: 0.09180641919, blue: 0.09178014845, alpha: 1)), radius: 25, x: -20, y: -20)
                            .multilineTextAlignment(.leading)
                        
                    }
                    
                    .padding()
                }
            }
        }
        .background(Color(#colorLiteral(red: 0.8980392157, green:0.9333333333, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all))
        
    }
}
