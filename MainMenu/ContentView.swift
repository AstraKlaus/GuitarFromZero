//
//  ContentView.swift
//  MainMenu
//
//  Created by Александр Касьянов on 10.07.2021.
//

import SwiftUI
import AVKit
import WebKit
import Combine

struct ContentView: View {
    @ObservedObject var favourite = Favourite()
    @Environment(\.colorScheme) var scheme
    init(){
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont.preferredFont(forTextStyle:.title1)]
        UINavigationBar.appearance().barTintColor = UIColor(Color(#colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1)))
        UITabBar.appearance().barTintColor = UIColor(Color(#colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1)))
        UITableView.appearance().backgroundColor = UIColor(Color(#colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1)))
        UITabBar.appearance().isHidden = false
        if #available(iOS 15.0, *) {
            let tabBarAppearance = UITabBarAppearance()
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            tabBarAppearance.configureWithDefaultBackground()
            tabBarAppearance.backgroundColor = .red
            UITabBar.appearance().barTintColor = UIColor(Color(#colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1)))
            UITableView.appearance().backgroundColor = UIColor(Color(#colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1)))
        }
    }
    var body: some View {
        TabView{
            NavigationView{
                
                ZStack {
                    Color(scheme == .light ? #colorLiteral(red: 0.8980392157, green:0.9333333333, blue: 1, alpha: 1) : #colorLiteral(red: 0.09178318828, green: 0.09180641919, blue: 0.09178014845, alpha: 1))
                        .edgesIgnoringSafeArea(.all)
                    ScrollView(showsIndicators: false){
                        MainVeiw()
                        ExtraLessonView()
                    }
                    //.background(BackGroundView())
                    
                    
                    .background(Color(#colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all))
                    
                    .navigationBarTitle("Уроки",displayMode: .inline).font(.title)
                    //.background(BackGroundView())
                    
                    .toolbar() {
                        
                        NavigationLink(destination: SettingsView()){Image(systemName:"gear")
                                .tag("Settings")
                            .font(.title3)}
                        
                    }
                    
                    /*
                     .navigationBarColor(scheme == .light ? Color(#colorLiteral(red: 0.8980392157, green:0.9333333333, blue: 1, alpha: 1)) : Color(#colorLiteral(red: 0.09178318828, green: 0.09180641919, blue: 0.09178014845, alpha: 1)))
                     */
                }
            }
            
            
            .tabItem {
                Image(systemName: "guitars")
                    .tag(1)
                Text("Уроки")
                    .font(.title)
                
            }
            AccordsView()
                .tabItem {
                    Image(systemName: "music.note.list")
                        .tag(2)
                    Text("Аккорды")
                }
            FavouritesView()
                .tabItem {
                    Image(systemName: "heart")
                        .tag(3)
                    Text("Избранное")
                }
            
        }.background(Color(#colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all))
            .accentColor(scheme == .light ?  Color(#colorLiteral(red: 0.09178318828, green: 0.09180641919, blue: 0.09178014845, alpha: 1)) : Color(#colorLiteral(red: 0.8980392157, green:0.9333333333, blue: 1, alpha: 1))).edgesIgnoringSafeArea(.all)
            .environmentObject(favourite)
            .tabViewStyle(DefaultTabViewStyle())
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.light)
    }
}

struct MainVeiw: View {
    var body: some View {
        VStack(alignment: .center, spacing:0){
            ForEach(0..<6) {number in
                NavigationLink(destination:
                                NeuSectionView(section: sectionData[number])
                ){
                    NeuTenView(title: nameData[number])
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}

let nameData = ["№0-9","№10-20","№20-30","№30-40","№40-50","№50-60",]
let numbersData = [0,11,21,31,41,51,61]
let colorsData = [UIColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),UIColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),UIColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),UIColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),UIColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),UIColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),]



struct ExtraLessonView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Дополнения:")
                .font(.title)
                .frame(maxWidth: .infinity)
            NavigationLink(destination: ScrollView {
                SectionView(section: Section(title: "10", text: "Дополнительный урок"))
            }) {
                TenView(title: "Дополнительные Уроки")
            }
        }
    }
}
