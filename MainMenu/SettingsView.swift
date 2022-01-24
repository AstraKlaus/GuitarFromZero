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
    var body: some View {
            Form {
                VStack{
                    Text("Текст для примера").font(.system(size: CGFloat(fontSize), weight: weightSelect == "Тонкий" ? .thin : weightSelect == "Обычный" ? .regular : weightSelect == "Полужирный" ? .light : . bold, design: designSelect == "Округленный" ? .rounded : .serif)).foregroundColor(colorSelect)
                    Text("Размер шрифта (\(fontSize, specifier: "%.0f") pts)").padding(.top)
                    Slider(value: $fontSize, in: 15...45).padding(.horizontal).padding(.horizontal)
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
                Text("""
                    Am(4)
                    Белый снег, серый лед,
                    　　　　C(4)
                    На растрескавшейся земле.
                    　Dm(4)
                    Одеялом лоскутным на ней -
                    G(4)
                    Город в дорожной петле.
                    　　　Am(4)
                    А над городом плывут облака,
                    """).lineSpacing(0)
            }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
