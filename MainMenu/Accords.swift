//
//  Accords.swift
//  MainMenu
//
//  Created by Александр Касьянов on 15.07.2021.
//

import Foundation
import SwiftUI

struct AccordsView: View {
    @State var showGame = false
    @State var tapAccord = false
    var columns = Array(repeating: GridItem(.fixed(0), spacing: 10), count: 1)
    var rows = Array(repeating: GridItem(.fixed(120), spacing: 0), count: 3)
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false) {
                
                    ForEach(accordData){item in
                        VStack(alignment: .center, spacing: 15){
                            Text(item.title).font(.system(size: tapAccord ? 25 : 20, weight: .medium, design: .rounded))
                            if tapAccord{
                                ScrollView(showsIndicators: false) {
                                    VStack{
                                        ForEach(0..<item.images.count){index in
                                            Image(item.images[index]).resizable().frame(width: 260, height: 160).aspectRatio(contentMode: .fit).clipShape(RoundedRectangle(cornerRadius: 5))
                                                .contextMenu{
                                                    Button(action: {
                                                        let save = ImageSaver()
                                                        save.writeToPhotoAlbum(image: UIImage(named: item.images[index])!)
                                                    }, label: {
                                                        Label("Сохранить", systemImage: "square.and.arrow.down.fill")
                                                    })
                                                    
                                                }
                                                
                                        }
                                    }
                                }
                        }else{
                            LazyVGrid(columns: rows, spacing: 10){
                                    ForEach(0..<item.images.count){index in
                                        Image(item.images[index]).resizable().frame(width: 110, height: 70).aspectRatio(contentMode: .fit).clipShape(RoundedRectangle(cornerRadius: 5))
                                    }
                                    }
                        }
                        }
                        .frame(width: 380, height: tapAccord ? 400 : item.images.count < 4 ? 140 : 220)
                        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.3))
                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                        .padding()
                        
                        .onTapGesture {
                        withAnimation(.easeInOut){
                            tapAccord.toggle()
                        }
                    }
                    }
                
                
                
            }
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                .background(Color(#colorLiteral(red: 0.8980392157, green:0.9333333333, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all))
            .navigationBarItems(trailing: Button("Play"){self.showGame.toggle()})
            
            .sheet(isPresented: $showGame){
                GameAccords()
            }
            .navigationBarTitle("Аккорды",displayMode: .inline)
            
            /*
            .navigationBarColor(Color(#colorLiteral(red: 0.8980392157, green:0.9333333333, blue: 1, alpha: 1)))
             */
        }
    }
}


struct GameAccords:View {
    @State private var accordsData = [["am","c","dm","g"].shuffled(),["am","c","em","d"].shuffled(),["am","c","em","d","h7"].shuffled(),["am","c","em","d","g","h7","e7"].shuffled(),["am","em","d","g","h7"].shuffled(),["em","d","g","c"].shuffled(),["am","em","d","g","c"].shuffled(),["a","hm","gm","g"].shuffled(),["a#","c","c(баррэ)","dm","dm(баррэ)","gm"].shuffled(),["am(баррэ)","e","f","gm"]].shuffled()
    @State private var correctLesson = Int.random(in: 0...8)
    @State private var correctAnswer = Int.random(in: 2...tonalDataPlay.count-3)
    @State private var correctAnswerFor = Int.random(in: 0..<3)
    @State private var score = 0
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var haveTrue = false
    @State var timeToPlay: [String] = []
    @State var selection: Int = 1
    @State var random : Int = Int.random(in: 0...2)
    var body: some View{
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.white, Color(#colorLiteral(red: 0.9064442515, green: 0.9423683286, blue: 1, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            VStack(spacing: 30) {
                VStack{
                    Text("Выбери Аккорд")
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding(.top)
                    Text(selection == 2 ? accordsData[correctLesson][correctAnswerFor].capitalized : tonalDataPlay[correctAnswer])
                        .foregroundColor(.black)
                        .font(.title)
                        .fontWeight(.black)
                }
                Picker("Вариант игры", selection: $selection){
                    Text("Аппликатура").tag(2)
                    Text("Тональности").tag(1)
                }.pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                if selection == 2{
                     ForEach(0..<3){ number in
                         Button(action: {
                             self.showingScore = true
                             self.flagTapped(number)
                         }){
                             ZStack {
                                 Image(showingScore ? "\(self.accordsData[correctLesson][number])" : "\(self.accordsData[correctLesson][number]) чистый")
                                     .renderingMode(.original)
                                     .resizable()
                                     .frame(width: 250,height: 145)
                                     .clipShape(RoundedRectangle(cornerRadius: 15))
                                     .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color(.black),lineWidth: 1))
                                     .shadow(color: .black,radius: 2)
                                 Spacer()
                             }
                         }
                     }
                }else{
                    ForEach(0..<3){ number in
                        Button(action: {
                            self.showingScore = true
                            self.flagTapped(random == 0 ? number+correctAnswer : random == 1 ? number+correctAnswer-1 : number+correctAnswer-2)
                        }){
                            ZStack {
                                Image(accordDataPlay[random == 0 ? number+correctAnswer : random == 1 ? number+correctAnswer-1 : number+correctAnswer-2])
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 250,height: 145)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                    .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color(.black),lineWidth: 1))
                                    .shadow(color: .black,radius: 2)
                                /*
                                    .overlay(
                                        VStack(spacing:0){
                                        RoundedRectangle(cornerRadius: 15).frame(width: 150, height: 40, alignment: .top)
                                            .foregroundColor(.white)
                                            .opacity(showingScore ? 0 : 1)
                                            .padding(.leastNonzeroMagnitude)
                                            Spacer()
                                                
                                        }
                                    )*/
                                Spacer()
                            }
                        }
                    }
                }
                Text("Общий счет: \(score)")
                    .font(.title)
                    .fontWeight(.black)
                Spacer()
            }
        }.alert(isPresented: $showingScore){
            Alert(title: Text(scoreTitle),message: Text("Общий счет: \(score)"),dismissButton: .default(Text("Продолжить")){askQuestion()})
        }
        
    }
    func askQuestion(){
            if selection == 2{
            correctLesson = Int.random(in: 0...8)
            correctAnswerFor = Int.random(in: 0..<3)
            accordsData[correctLesson].shuffle()
        }else{
            random = Int.random(in: 0...2)
            self.correctAnswer = Int.random(in: random == 0 ? 0..<tonalDataPlay.count-4 : random == 1 ? 1..<tonalDataPlay.count-3 : 2..<tonalDataPlay.count-2)
        }
    }
    func flagTapped(_ number: Int) {
        if selection == 1 ? number == correctAnswer : number == correctAnswerFor{
            scoreTitle = "Правильный ответ"
            score += 1
        }else{
            scoreTitle = "Неправильный ответ, это аккорд \(selection == 2 ? accordsData[correctLesson][number].capitalized : tonalDataPlay[number])"
            score -= 1
        }
    }
}

struct Accord: Identifiable {
    var id = UUID()
    var title: String
    var images: [String]
}
let tonalData = [["Ля минор","Ля минор","Ля мажор","Ля мажор","Ля-диез мажор"],["До мажор","До мажор"],["Ре мажор","Ре минор","Ре минор"],["Ми мажор","Ми минор","Мажорный септаккорд от ноты Ми"],["Фа мажор"],["Соль мажор","Соль минор"],["Си минор","Мажорный септаккорд от ноты Си"]]
let accordDataPlay = ["am","am(баррэ)","a","a(баррэ)","a#","c","c(баррэ)","d","dm","dm(баррэ)","e","em","e7","f","h7","hm"]
let tonalDataPlay = ["Ля минор","Ля минор","Ля мажор","Ля мажор","Ля-диез мажор","До мажор","До мажор","Ре мажор","Ре минор","Ре минор","Ми мажор","Ми минор","Мажорный септаккорд от ноты Ми","Фа мажор","Соль мажор","Соль минор","Си минор","Мажорный септаккорд от ноты Си"]
let accordData = [
    Accord(title: "Аккорды A (Ля)", images: ["am","am(баррэ)","a","a(баррэ)","a#"]),
    Accord(title: "Аккорды C (До)", images: ["c","c(баррэ)"]),
    Accord(title: "Аккорды D (Ре)", images: ["d","dm","dm(баррэ)"]),
    Accord(title: "Аккорды E (Ми)", images: ["e","em","e7"]),
    Accord(title: "Аккорды F (Фа)", images: ["f"]),
    Accord(title: "Аккорды G (Соль)", images: ["g","gm"]),
    Accord(title: "Аккорды H или B (Си)", images: ["h7","hm"])
]
