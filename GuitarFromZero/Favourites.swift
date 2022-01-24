//
//  Favourites.swift
//  MainMenu
//
//  Created by Александр Касьянов on 15.07.2021.
//

import Foundation
import SwiftUI
import Combine

struct FavouritesNumbers: Identifiable,Codable {
    var id = UUID()
    let number: Int
}


class Favourite: ObservableObject {
    @Published var favourites: [FavouritesNumbers]{
        didSet{
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(favourites){
                UserDefaults.standard.set(encoded, forKey: "Items")
                print("Here3")
            }
            
        }
    }
    init() {
        if let favourite = UserDefaults.standard.data(forKey: "Items"){
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([FavouritesNumbers].self, from: favourite){
                self.favourites = decoded
                print("Here2")
                return
            }else{
                self.favourites = [FavouritesNumbers]()
                print("Here")
            }
        }else{
            self.favourites = [FavouritesNumbers]()
            print("Here1")
        }
    }
}




struct FavouritesView: View {
    @EnvironmentObject var favourite: Favourite
    @State var selectedObject: Bool = false
    var body: some View {
        NavigationView {
            List{
                
                
                ForEach(self.favourite.favourites){item in
                    SubFavouriteView(number: item.number)
                }
                .onDelete(perform: removeItems)
                .onMove(perform:moveItems)
                
                
            }
            .navigationBarTitle(Text("Избранное"))
            .navigationBarItems(leading: EditButton())
            .navigationBarTitleDisplayMode(.inline)
            /*
            .navigationBarColor(Color(#colorLiteral(red: 0.9489265084, green: 0.949085772, blue: 0.9704096913, alpha: 1)))
             */
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
