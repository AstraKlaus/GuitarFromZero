//
//  LessonView.swift
//  MainMenu
//
//  Created by Александр Касьянов on 17.07.2021.
//

import Foundation
import SwiftUI
import WebKit
import AVKit
import Combine




struct FavouriteLesson: View {
    var section: Section
    var youtubeLink: YouTubeLink
    var song: Song
    @State var selection: Int = 0
    @EnvironmentObject var favourite: Favourite
    @State var youtube = false
    @State private var tapText = false
    @State private var tapAccord = false
    @State private var tapTrain = false
    @State private var tapBoy = false
    @State private var tapHowToBoy = false
    @State private var tapTrainBoy = false
    @State private var tapHowToAccord = false
    @State private var tapTrainAccord = false
    @State private var tapTrainSong = false
    @State private var tapSong = false
    @State var isPresented = false
    @State var scrollText = true
    @State private var scrollTextCGPoint: CGPoint = .zero
    @AppStorage("fontSize") var fontSize: Double?
    @AppStorage("weightSelect") var weightSelect: String?
    @AppStorage("designSelect") var designSelect: String?
    @AppStorage("colorSelect") var colorSelected: Color = Color.black
    var body: some View {
        ScrollView(showsIndicators: false) {
            ScrollViewReader {(proxy: ScrollViewProxy) in
                
                        VStack{
                            
                           /* HStack {
                                Image(systemName: tapStar ? "star.fill" : "star")
                                        .font(.title)
                                        .foregroundColor(.yellow)
                                        .onTapGesture {
                                            
                                            
                                            //self.favourite.favourites.append(youtubeData.firstIndex(where: { $0.link == strOfLink })!)
                                            self.favourite.favourites.append(FavouritesNumbers(number: youtubeData.firstIndex(where: { $0.link == youtubeLink.link })!))
                                            self.tapStar.toggle()
                                            
                                        }
                                Image(systemName: checkmark ? "checkmark.circle.fill" :"checkmark.circle" )
                                    .overlay(
                                        Circle()
                                            .trim(from: completed ? 0.001 :  1, to: 1)
                                            .stroke(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 4, lineCap: .round))
                                            .frame(width: 25,height: 25)
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
                                
                            }.padding()
                           */
                            
                            WebView(request: URLRequest(url: URL(string: youtubeLink.link)!))
                                .frame(maxWidth: .infinity)
                                .frame(height: 170, alignment: .topLeading)
                                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                .shadow(color: .black.opacity(0.4), radius: 10, x: 0, y: 0)
                                .padding()
                                .contextMenu{
                                    Button(action: {
                                        self.youtube.toggle()
                                    }, label: {
                                        Label("Сохранить", systemImage: "square.and.arrow.down.fill")
                                    })
                                    
                                }
                            LessonButtonView(boolVar: $tapText, text: "Текст песни:", index: 789, song: song)
                                    VStack {
                                        HStack(alignment:.center){
                                            if !tapAccord{
                                                ScrollView(.horizontal, showsIndicators: false){
                                                    HStack(alignment: .center, spacing: 10){
                                                        if tapText{
                                                            ForEach(0..<song.accords.count){ index in Image(song.accords[index]).resizable().frame(maxWidth: 150, maxHeight: 90).clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous)).shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue:              0.9259157777, alpha: 1)), radius: 10, x: -2, y: 2)
                                                                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 10, x: -2, y: 2)
                                                                    .onTapGesture {
                                                                            selection = index
                                                                        withAnimation(.easeInOut){
                                                                            tapAccord.toggle()
                                                                        }
                                                                    }
                                                            }
                                                        }
                                                    }.padding(tapText ? 10 : 0)
                                                }
                                            }else{
                                                TabView(selection: $selection) {
                                                    ForEach(0..<song.accords.count){ index in
                                                        Image(song.accords[index]).resizable().frame(maxWidth: 330, maxHeight: 200).clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous)).contextMenu{
                                                            Button(action: {
                                                                let saver = ImageSaver()
                                                                saver.writeToPhotoAlbum(image: UIImage(named: song.accords[index])!)
                                                            }, label: {
                                                                Label("Сохранить", systemImage: "square.and.arrow.down.fill")
                                                            })
                                                            
                                                        }
                                                    }
                                                }
                                                .frame(maxWidth: .infinity)
                                                .frame(height: 250)
                                                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                                                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                                                .onTapGesture {
                                                    withAnimation(.easeInOut){
                                                        tapAccord.toggle()
                                                    }
                                                    
                                                    
                                                }
                                                
                                                
                                            }
                                        }
                                        
//                                            ScrollableView(self.$scrollTextCGPoint, animationDuration: 5.0, showsScrollIndicator: false, forceRefresh: true, stopScrolling: $scrollText) {
//                                                Text(tapText ? song.text : "")
//                                                .font(.system(size: CGFloat(fontSize ?? 10), weight: weightSelect == "Тонкий" ? .thin : weightSelect == "Обычный" ? .regular : weightSelect == "Полужирный" ? .light : . bold, design: designSelect == "Округленный" ? .rounded : .serif)).foregroundColor(colorSelected)
//                                            }.frame(height: scrollText || tapText == false ? 0 : 400)
                                            Text(tapText && scrollText ? song.text : "")
                                                .font(.system(size: CGFloat(fontSize ?? 10), weight: weightSelect == "Тонкий" ? .thin : weightSelect == "Обычный" ? .regular : weightSelect == "Полужирный" ? .light : . bold, design: designSelect == "Округленный" ? .rounded : .serif))
                                                .foregroundColor(colorSelected)
                                                
                                            
                                        
                                    
                                    
                                    }
                                
                            ForEach(0..<song.title.count){ index in
                                LessonButtonView(boolVar: [self.$tapBoy,self.$tapTrain,self.$tapHowToBoy,self.$tapTrainBoy,self.$tapHowToAccord,self.$tapTrainAccord,self.$tapTrainSong,self.$tapSong][index], text: song.title[index], index: index, song: song).padding(.vertical).id(index+1)
                            }
                            
                        }
                }
                .navigationBarItems(trailing:
                                        HStack{
                                            Text("Урок № \(youtubeData.firstIndex(where: { $0.link == youtubeLink.link })!)").font(.title3)
                                        Button(action: {UIPasteboard.general.string = self.song.text}, label: {
                                            Image(systemName: "doc.on.doc.fill").font(.title3).foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
                                        }).contextMenu{
                                            Button(action: {UIPasteboard.general.string = self.song.text
                                            }){
                                                Text("Скопировать текст песни")}
                                        }
                                            Button(action: {self.isPresented.toggle()}){
                                                Image(systemName: "gear").font(.title3).foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))}
                                        })
                        }
                .sheet(isPresented: $isPresented){SettingsView()}
                .sheet(isPresented: $youtube){
                    WebView(request: URLRequest(url: URL(string: "https://ru.savefrom.net/36/#url="+youtubeLink.link)!))
                .frame(maxWidth: .infinity)
                
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                .shadow(color: .black.opacity(0.4), radius: 10, x: 0, y: 0)
                .padding()
                    
                }
                //.background(BackGroundView())
                //.environmentObject(Favourite())
                .environmentObject(favourite)
        
            .background(Color(#colorLiteral(red: 0.8980392157, green:0.9333333333, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all))
    }
}



        //.navigationBarItems(trailing: Button("test"){FavouritesView(favourite: Favourite()).favourite.favourites.append(Section(title: section.title, text: section.text))})
