//
//  Favourites.swift
//  MainMenu
//
//  Created by Александр Касьянов on 15.07.2021.
//

import Foundation
import SwiftUI
import Combine




@MainActor class Favourite: ObservableObject {
    @Published var favourites: [Int]{
        didSet{
            UserDefaults.standard.set(favourites, forKey: "favor")
            objectWillChange.send()
        }
        
        willSet{
            objectWillChange.send()
        }
        
    }
    func addItem(_ item: Int){
        self.favourites.append(item)
        UserDefaults.standard.set(favourites, forKey: "favor")
        
    }
    init() {
        self.favourites = UserDefaults.standard.array(forKey: "favor") as? [Int] ?? []
    }
}




struct FavouritesView: View {
    @EnvironmentObject var favourite: Favourite
    @State var selectedObject: Bool = false
    var body: some View {
        NavigationView {
            List{
                ForEach(favourite.favourites, id: \.self){item in
                    SubFavouriteView(number: item)
                }
                .onDelete(perform: removeItems)
                .onMove(perform:moveItems) 
            }
            .navigationBarTitle(Text("Избранное"))
            .navigationBarItems(leading: EditButton())
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
    
    func removeItems(as offsets: IndexSet) {
        favourite.favourites.remove(atOffsets: offsets)
    }
    func moveItems(indices: IndexSet, newOffset: Int) {
        favourite.favourites.move(fromOffsets: indices, toOffset: newOffset)
    }
    
}

func SubFavouriteView(number: Int) -> some View {
    return
    NavigationLink(
        destination:
            FavouriteLesson(section: sectionData[number], youtubeLink: youtubeData[number], song: songsData[number <= 10 ? number : 0])
        
    ){
        HStack(spacing: 10){
            Text("\(sectionData.firstIndex(where: {$0.text == sectionData[number].text})!)")
                .font(.title)
                .foregroundColor(.black)
                .frame(width: 50, height: 100)
            RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                .frame(width: 2, height: 90)
                .foregroundColor(.black.opacity(0.3))
            Text(sectionData[number].text)
                .font(.subheadline)
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .frame(height: 100)
        }.frame(width: 250, height: 100,alignment: .leading)
    }
}
