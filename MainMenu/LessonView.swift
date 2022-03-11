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



class ImageSaver: NSObject {
    func writeToPhotoAlbum(image: UIImage) {
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveError), nil)
    }
    
    @objc func saveError(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        print("Save finished!")
    }
}

class Completed: ObservableObject{
    @Published var completeData: [Int]{
        didSet{
            if let encoded = try? JSONEncoder().encode(completeData){
                UserDefaults.standard.set(encoded, forKey: "Complete")
            }
            
        }
    }
    init() {
        if let complete = UserDefaults.standard.data(forKey: "Complete"){
            if let decoded = try? JSONDecoder().decode([Int].self, from: complete){
                self.completeData = decoded
                
            }
        }
        self.completeData = []
    }
}

@MainActor class SettingsStore: ObservableObject{
    @Published var completed: [Int] {
        didSet {
            UserDefaults.standard.set(completed, forKey: "completed")
            objectWillChange.send()
            
        }
        willSet{
            objectWillChange.send()
            
        }
        
    }
    func addItem(_ item: Int) {
        self.completed.append(item)
        UserDefaults.standard.set(completed, forKey: "completed")
    }
    func isContains(_ item: Int) -> Bool{
        self.completed.contains(item)
    }
    
    init() {
        self.completed = UserDefaults.standard.array(forKey: "completed") as? [Int] ?? []
    }
}


struct Lesson: View {
    var section: Section
    var youtubeLink: YouTubeLink
    var song: Song
    @State var selection: Int = 0
    @EnvironmentObject var favourite: Favourite
    @EnvironmentObject var complete: SettingsStore
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
    @State private var tapStar = false
    @GestureState var completed = false
    @State var isPresented = false
    @State var scrollText = true
    @State private var scrollTextCGPoint: CGPoint = .zero
    @AppStorage("fontSize") var fontSize: Double?
    @AppStorage("weightSelect") var weightSelect: String?
    @AppStorage("designSelect") var designSelect: String?
    @AppStorage("colorSelect") var colorSelected: Color = Color.black
    var nowLesson: Int{
        youtubeData.firstIndex(where: { $0.link == youtubeLink.link })!
    }
    var checkmark = false
    var body: some View {
        ScrollView(showsIndicators: false) {
            ScrollViewReader {(proxy: ScrollViewProxy) in
                VStack{
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
                        if tapText && (nowLesson == 6 || nowLesson == 7 || nowLesson == 4) {
                            Picker("Вариант игры", selection: $selection){
                                Text("Первый текст").tag(0)
                                Text("Второй текст").tag(1)
                            }.pickerStyle(SegmentedPickerStyle())
                                .padding(.horizontal)
                        }
                        VStack {
                            HStack(alignment: .top) {
                                Text(tapText && scrollText ? song.text[selection] : "").padding(.horizontal)
                                    .font(.system(size: CGFloat(fontSize ?? 10), weight: weightSelect == "Тонкий" ? .thin : weightSelect == "Обычный" ? .regular : weightSelect == "Полужирный" ? .light : . bold, design: designSelect == "Округленный" ? .rounded : .serif))
                                    .foregroundColor(colorSelected)
                                Spacer()
                                Button(action: {UIPasteboard.general.string = self.song.text[selection]}, label: {
                                    Image(systemName: tapText && scrollText ? "doc.on.doc.fill" : ""  ).font(.title2).foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
                                }).padding(.horizontal)
                                    .contextMenu{
                                        Button(action: {UIPasteboard.general.string = self.song.text[selection]
                                        }){
                                            Text("Скопировать текст песни")}
                                    }
                            }
                            Spacer()
                        }
                        
                    }
                    ForEach(0..<song.title.count){ index in
                        LessonButtonView(boolVar: [self.$tapBoy,self.$tapTrain,self.$tapHowToBoy,self.$tapTrainBoy,self.$tapHowToAccord,self.$tapTrainAccord,self.$tapTrainSong,self.$tapSong][index], text: song.title[index], index: index, song: song).padding(.vertical).id(index+1)
                    }
                }
            }
            .navigationBarItems(trailing:
                                    HStack{
                Text("Урок № \(nowLesson)").font(.title3)
                Button(action: {
                    if complete.isContains(nowLesson){
                        complete.completed = complete.completed.filter{ $0 != nowLesson }
                    }else{
                        complete.addItem(nowLesson)
                    }
                }){
                    Image(systemName: complete.completed.contains(nowLesson) ? "checkmark.circle.fill" :"checkmark.circle" ).foregroundColor(complete.completed.contains(nowLesson) ? .green : .gray).font(.title3)}
                Button(action: {
                    favourite.isContains(nowLesson) ? favourite.uselessThing(nowLesson) : self.favourite.addItem(nowLesson)
                }){
                    Image(systemName: favourite.isContains(nowLesson) ? "star.fill" : "star")
                        .font(.title2)
                    .foregroundColor(.yellow)}
                
                Button(action: {self.isPresented.toggle()}){
                    Image(systemName: "gear").font(.title3).foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))}
            })
        }
        .sheet(isPresented: $isPresented){SettingsView(textOfSong: song.text[selection])}
        .sheet(isPresented: $youtube){
            WebView(request: URLRequest(url: URL(string: "https://ru.savefrom.net/36/#url="+youtubeLink.link)!))
            
            
        }
        //.background(BackGroundView())
        //                .environmentObject(favourite)
        .background(Color(#colorLiteral(red: 0.8980392157, green:0.9333333333, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all))
    }
}



//.navigationBarItems(trailing: Button("test"){FavouritesView(favourite: Favourite()).favourite.favourites.append(Section(title: section.title, text: section.text))})



struct WebView : UIViewRepresentable {
    
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
    
}



struct LessonButtonView: View {
    @Binding var boolVar: Bool
    var text: String
    var index: Int
    var song: Song
    var body: some View {
        VStack{
            Button(action: {withAnimation(.easeInOut){boolVar.toggle()}}) {
                HStack {
                    Text(text)
                    Spacer()
                    Image(systemName: "control").rotationEffect(.degrees(boolVar ? 0 : 180))
                }
                .padding(.horizontal)
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            .padding(.horizontal)
            .frame(width: 350, height: 50,alignment: .leading)
            .background(
                ZStack {
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .foregroundColor(.white)
                        .blur(radius: 8)
                        .offset(x: -8, y: -8)
                    
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9064442515, green: 0.9423683286, blue: 1, alpha: 1)).opacity(0.5), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                            
                        )
                        .padding(1)
                        .blur(radius: 2)
                    
                }
                
            )
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue:0.9259157777, alpha: 1)), radius: 25, x: 20, y: 20)
            .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -15, y: -15)
            VStack{
                if boolVar == true && index != 789{
                    WebView(request: URLRequest(url: URL(string: song.link[index])!))
                        .frame(maxWidth: .infinity)
                        .frame(height: 170, alignment: .topLeading)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                        .shadow(color: .black.opacity(0.4), radius: 10, x: 0, y: 0)
                        .padding(.horizontal)
                }
            }
        }
    }
    
}


