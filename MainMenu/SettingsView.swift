//
//  SettingsView.swift
//  MainMenu
//
//  Created by Андрей Касьянов on 21.10.2021.
//

import SwiftUI


struct SettingsView: View {
    @AppStorage("showPreview") var showPreview = true
    @AppStorage("fontSize") var fontSize = 15.0
    @AppStorage("weightSelect") var weightSelect: String = "Тонкий"
    @AppStorage("designSelect") var designSelect: String = "Засечки"
    @AppStorage("colorSelect") var colorSelect: Color = Color.black
    @State var textOfSong: String
    var body: some View {
            Form {
                VStack{
                    Text("Текст для примера").font(.system(size: CGFloat(fontSize), weight: weightSelect == "Тонкий" ? .thin : weightSelect == "Обычный" ? .regular : weightSelect == "Полужирный" ? .light : . bold, design: designSelect == "Округленный" ? .rounded : .serif)).foregroundColor(colorSelect)
                    Text("Размер шрифта (\(fontSize, specifier: "%.0f") pts)").padding(.top)
                    Slider(value: $fontSize, in: 10...30).padding(.horizontal).padding(.horizontal)
                    Picker("Жирность: \(weightSelect)", selection: $weightSelect){
                        Text("Тонкий").tag("Тонкий")
                        Text("Обычный").tag("Обычный")
                        Text("Полужирный").tag("Полужирный")
                        Text("Жирный").tag("Жирный")
                    }.font(.title2).pickerStyle(MenuPickerStyle())
                    Picker("Жирность: \(designSelect)", selection: $designSelect){
                        Text("Округленный").tag("Округленный")
                        Text("Засечки").tag("Засечки")
                    }.font(.title2).pickerStyle(SegmentedPickerStyle())
                    ColorPicker("Выбрать цвет:", selection: $colorSelect).font(.title2)
                }
                Text(textOfSong).font(.system(size: CGFloat(fontSize-2), weight: weightSelect == "Тонкий" ? .thin : weightSelect == "Обычный" ? .regular : weightSelect == "Полужирный" ? .light : . bold, design: designSelect == "Округленный" ? .rounded : .serif)).foregroundColor(colorSelect)
            }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(textOfSong: songsData[2].text[0])
    }
}
