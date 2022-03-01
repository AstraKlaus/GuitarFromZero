//
//  DataBase.swift
//  MainMenu
//
//  Created by Андрей Касьянов on 03.10.2021.
//


import SwiftUI

struct Section: Identifiable,Codable {
var id = UUID()
var title: String
var text: String
}


var sectionData = [
Section(title: "Урок №0 " ,text: "Как настроить гитару по тюнеру и на слух"),
Section(title: "Урок №1 " ,text: "Первые аккорды и бой№1 'Звезда по имени солнце'."),
Section(title: "Урок №2 " ,text: "Учимся ставить аккорды 'Пачка сигарет'"),
Section(title: "Урок №3 " ,text: "Как быстро переставлять аккорды и играть разные бои 'Нам с тобой'"),
Section(title: "Урок №4 " ,text: "Учим бой 'Просвистела' и 'Что такое осень'"),
Section(title: "Урок №5 " ,text: "Ритм на 3/4 и первый перебор 'Прогулки по воде'"),
Section(title: "Урок №6 " ,text: "Учимся играть бой с перебором 'ДДТ-Метель'"),
Section(title: "Урок №7 " ,text: "Бой с перебором 'Мое сердце и Лирика'"),
Section(title: "Урок №8 " ,text: "Как брать баррэ, учимся быстро ставить баре"),
Section(title: "Урок №9 " ,text: "Учимся быстро переставлять баррэ"),
Section(title: "Урок №10 " ,text: "'Батарейка' - Жуки разбор"),
Section(title: "Урок № " ,text: "На гитаре перебором ПРАВИЛЬНО, убери кривые руки, урок 5Б"),
Section(title: "Урок № " ,text: "Уроки по игре на гитаре (урок 11), скоростная игра, быстрый бой- галоп/ Стук- Кино (В.Цой)"),
Section(title: "Урок № " ,text: "Уроки игры на гитаре для начинающих ( урок 12) - Ритм Регги, на слабую долю, заглушенные ноты"),
Section(title: "Урок № " ,text: "Обучение игре на акустической гитаре (Урок 13) учимся играть разные бои и ритмические рисунки."),
Section(title: "Урок № " ,text: "Уроки по игре на гитаре, обучение для начинающих (урок 14) -как играть перебором"),
Section(title: "Урок № " ,text: "Уроки игры на гитаре (15 урок) учимся играть совмещенный бой на примере Вот пуля просвистела/Звезда"),
Section(title: "Урок № " ,text: "Учимся играть бой галоп и глухие ноты на гитаре ( 16 урок) на примере Перемен- Кино"),
Section(title: "Урок № " ,text: "Уроки гитары для начинающих, урок 17, на примере Невеселая песня- кино/разбор"),
Section(title: "Урок № " ,text: "Уроки игры на гитаре, для начинающих, учимся переходить с аккорда на аккорд при помощи галоп."),
Section(title: "Урок № " ,text: "Обучение, уроки игры на гитаре для начинающих с нуля (19 урок) ДДТ-Что нам ветер/ разбор"),
Section(title: "Урок № " ,text: "Уроки игры на гитаре с нуля (урок20) на примере Сплин- Выхода нет- подробный разбор и обучение."),
Section(title: "Урок № " ,text: "Уроки игры на гитаре для новичков (урок21) Ритм на 3/4 на примере Штиль- Ария(разбор, бой)"),
Section(title: "Урок № " ,text: "Уроки игры на гитаре с нуля для начинающих/Вступление Звезда по имени солнце/ Последний герой"),
Section(title: "Урок № " ,text: "Уроки игры на акустической гитаре с нуля для начинающих (урок 23) Это все- ддт/разбор"),
Section(title: "Урок № " ,text: "Уроки гитары для начинающих с нуля, урок 24, переборы с боями ДДТ- на небе вороны/разбор"),
Section(title: "Урок № " ,text: "Обучение на гитаре, уроки для начинающих с нуля (урок25) мама анархия- Кино(ЦОЙ)"),
Section(title: "Урок № " ,text: "Видео уроки по игре на гитаре для начинающих (урок26) Война-Кино, бой, аккорды, разбор."),
Section(title: "Урок № " ,text: "Уроки игры на гитаре для начинающих с нуля (урок 27) сложные ритмы"),
Section(title: "Урок № " ,text: "Видеоуроки игры на гитаре для начинающих (урок28) учим табулатуры соло Кукушка- Кино"),
Section(title: "Урок № " ,text: "Обучение игре на акустике ,уроки игры на гитаре с нуля (урок29) играем соло"),
Section(title: "Урок № " ,text: "КАК ПОМЕНЯТЬ СТРУНЫ на акустической гитаре - УРОК 100500 видео"),
Section(title: "Урок № " ,text: "Уроки игры на гитаре ГРУППА КРОВИ -Кино(разбор) для начинающих с нуля."),
Section(title: "Урок № " ,text: "Уроки гитары для новичков (урок 31) Стук- Кино вступление, Расстреляли рассветами ДДТ"),
Section(title: "Урок № " ,text: "Обучение игре на гитаре с нуля для новичков, урок 32 (уроки для начинающих)"),
Section(title: "Урок № " ,text: "Как подбирать бои к любой песне, на слух, уроки игры на гитаре для начинающих."),
Section(title: "Урок № " ,text: "Уроки гитары Печаль- Кино (часть первая подробный разбор) обучение с нуля для начинающих."),
Section(title: "Урок № " ,text: "Уроки игры на гитаре, для новичков, учим ноты на грифе гитары, учимся играть бас."),
Section(title: "Урок № " ,text: "Учим ноты на гитаре, уроки с нуля для начинающих (урок 35) Метель ДДТ- вступление"),
Section(title: "Урок № " ,text: "Уроки на гитаре, быстрые, скоростные бои (ритмы) на примере Мама мы все тяжело больны- Кино (Цой)"),
Section(title: "Урок № " ,text: "Уроки игры на гитаре для начинающих с нуля, Сплин - Романс подробный разбор/переборы, растяжка"),
Section(title: "Урок № " ,text: "Уроки игры на гитаре с нуля, ска ритмы, на примере леприконсы хали-гали паратрупер"),
Section(title: "Урок № " ,text: "Уроки гитары для начинающих, Попробуй спеть вместе со мной и Теория- СТУПЕНИ,минор,мажор"),
Section(title: "Урок № " ,text: "Уроки игры на гитаре с начального уровня/Дальше действовать будем мы и Попробуй спетьКИНО"),
Section(title: "Урок № " ,text: "Как петь, основы вокала, отвечаю на многочисленные вопросы, опора, диафрагма, как попадать в ноты"),
Section(title: "Урок № " ,text: "Уроки игры на гитаре- повер аккорды, квинты, кварты, Киш- Гимн Шута, панк рок"),
Section(title: "Урок № " ,text: "Как научится играть на гитаре созвучиями- квинтами, октавами (интервалы) -уроки игры на гитаре."),
Section(title: "Урок № " ,text: "Уроки гитары с нуля для начинающих и продвинутых, сложные ритмы, фишки из Группа Крови и Каждую ночь"),
Section(title: "Урок № " ,text: "Как играть соло и перебор с боем вместе, фингерстайл, уроки игры на гитаре. Кукушка - Кино (В.Цой)"),
Section(title: "Урок № " ,text: "Урок вокала (БII) Упражнения для того что бы попадать в ноты, правильно дыхание, как поставить голос"),
Section(title: "Урок № " ,text: "Уроки игры на гитаре- Taylor 614ce / Мотивация"),
Section(title: "Урок № " ,text: "Фингерстайл- на гитаре, как играть соло и перебор с боем вместе ( 45 урок)"),
Section(title: "Урок № " ,text: "Игра на гитаре - фингерстайл, урок 46, на примере Последняя осень - ДДТ"),
Section(title: "Урок № " ,text: "47 урок - Подготавливаем технику, длительность нот, нестандартные размеры на 5"),
Section(title: "Урок № " ,text: "D1- Вокальный разбор Звезда по имени солнце Кино (Виктор Цой), как петь правильно, доп к уроку 1"),
Section(title: "Урок № " ,text: "Как петь Пачка сигарет (КИНО В.Цой) Ритмически и по нотам, доп к ур.2"),
Section(title: "Урок № " ,text: "Разбор вокала Нам с Тобой (КИНО)- Поем в ритме и по нотам. Доп к ур 3"),
Section(title: "Урок № " ,text: "Дополнение к уроку 4, полный разбор вокальных партий, Просвистела и Что такое осень"),
Section(title: "Урок № " ,text: "48 Урок -Интервалы, подберем их, а потом сыграем в темпе 230 (В Последнюю Осень ДДТ)"),
Section(title: "Урок № " ,text: "Как играть под метроном убирая доли, секрет пунктирных ритмов"),
Section(title: "Урок № " ,text: "49 Урок - Аранжировка, как брать необычные аккорды, соло Группа Крови и Следи за собой."),
Section(title: "Урок № " ,text: "Превращаем 3 урок в 50-й, учебный процесс практически Фингерстайл"),
Section(title: "Урок № " ,text: "Как выбрать гитару, какую, дорогую или дешевую, БУ")
]

var lessonData = Array(0...60)
var lessonsData = Array(0...60)
var lessonDatas = Array(0...60)

struct YouTubeLink: Identifiable {
    var id = UUID()
    var link: String
}

let youtubeData = [
    YouTubeLink(link: "https://www.youtube.com/embed/tUTu5clQGFw"),
    YouTubeLink(link: "https://www.youtube.com/embed/w8eccjOeotQ"),
    YouTubeLink(link: "https://www.youtube.com/embed/K0HnY22I8es"),
    YouTubeLink(link: "https://www.youtube.com/embed/qTJ6pwdYkyk"),
    YouTubeLink(link: "https://www.youtube.com/embed/zo2IinVDyXM"),
    YouTubeLink(link: "https://www.youtube.com/embed/7DD54t3p0-Y"),
    YouTubeLink(link: "https://www.youtube.com/embed/ZPDL5i5TS54"),
    YouTubeLink(link: "https://www.youtube.com/embed/pkKj_6jURdM"),
    YouTubeLink(link: "https://www.youtube.com/embed/MpnYAAiBPMc"),
    YouTubeLink(link: "https://www.youtube.com/embed/nTyIhYXtjfI"),
    YouTubeLink(link: "https://www.youtube.com/embed/Ok9vFuS1gy4"),
    YouTubeLink(link: "https://www.youtube.com/embed/S5uZQquD-70"),
    YouTubeLink(link: "https://www.youtube.com/embed/6Lrik7Iwjlw"),
    YouTubeLink(link: "https://www.youtube.com/embed/PlDKjbn_QJQ"),
    YouTubeLink(link: "https://www.youtube.com/embed/0n0HBag48L0"),
    YouTubeLink(link: "https://www.youtube.com/embed/GtmApWBVFMI"),
    YouTubeLink(link: "https://www.youtube.com/embed/cw9NBJC08lY"),
    YouTubeLink(link: "https://www.youtube.com/embed/ogcMVkfaBoo"),
    YouTubeLink(link: "https://www.youtube.com/embed/TP4gwB2w62s"),
    YouTubeLink(link: "https://www.youtube.com/embed/U1Rtp7U_Mdg"),
    YouTubeLink(link: "https://www.youtube.com/embed/MjKg-8Yh4mg"),
    YouTubeLink(link: "https://www.youtube.com/embed/9vZcWnd8fE8"),
    YouTubeLink(link: "https://www.youtube.com/embed/dh-Hxgu4pOE"),
    YouTubeLink(link: "https://www.youtube.com/embed/G0XY06UgkE8"),
    YouTubeLink(link: "https://www.youtube.com/embed/xkiiqhvPFOk"),
    YouTubeLink(link: "https://www.youtube.com/embed/EU7Ay1L7Q90"),
    YouTubeLink(link: "https://www.youtube.com/embed/zp5lIjCgogc"),
    YouTubeLink(link: "https://www.youtube.com/embed/ZYkCdCr4-jM"),
    YouTubeLink(link: "https://www.youtube.com/embed/Vahw_O5pYEo"),
    YouTubeLink(link: "https://www.youtube.com/embed/KUPwVm0K2fU"),
    YouTubeLink(link: "https://www.youtube.com/embed/P3xjFdXIRpE"),
    YouTubeLink(link: "https://www.youtube.com/embed/zAn0Y0yBpco"),
    YouTubeLink(link: "https://www.youtube.com/embed/iD_PrN3hAtY"),
    YouTubeLink(link: "https://www.youtube.com/embed/yeiPBA2krzE"),
    YouTubeLink(link: "https://www.youtube.com/embed/5EcmpKsdmUo"),
    YouTubeLink(link: "https://www.youtube.com/embed/xPIXCICN0ZI"),
    YouTubeLink(link: "https://www.youtube.com/embed/_8okZaTDugY"),
    YouTubeLink(link: "https://www.youtube.com/embed/pChGMR7l2Ho"),
    YouTubeLink(link: "https://www.youtube.com/embed/kywrAuPtq9A"),
    YouTubeLink(link: "https://www.youtube.com/embed/eBU3STCBbt0"),
    YouTubeLink(link: "https://www.youtube.com/embed/ZIUwh-z3oX0"),
    YouTubeLink(link: "https://www.youtube.com/embed/1k8QOw_qE7Q"),
    YouTubeLink(link: "https://www.youtube.com/embed/hIBrNpnL60g"),
    YouTubeLink(link: "https://www.youtube.com/embed/lshSd2fzHEY"),
    YouTubeLink(link: "https://www.youtube.com/embed/8W7QnNum2e4"),
    YouTubeLink(link: "https://www.youtube.com/embed/JfivG6jeau0"),
    YouTubeLink(link: "https://www.youtube.com/embed/oP28BuWKQXE"),
    YouTubeLink(link: "https://www.youtube.com/embed/_zcfd3MK7-o"),
    YouTubeLink(link: "https://www.youtube.com/embed/3GDn5g2Sfx8"),
    YouTubeLink(link: "https://www.youtube.com/embed/RAx3I9NvoR8"),
    YouTubeLink(link: "https://www.youtube.com/embed/BNLRfZr_2lw"),
    YouTubeLink(link: "https://www.youtube.com/embed/-TE52d_dZtU"),
    YouTubeLink(link: "https://www.youtube.com/embed/hHqf4O4EOvg"),
    YouTubeLink(link: "https://www.youtube.com/embed/zpLk0QX_m7s"),
    YouTubeLink(link: "https://www.youtube.com/embed/N1Df5NV1Wo4"),
    YouTubeLink(link: "https://www.youtube.com/embed/y0VJ2MsQn04"),
    YouTubeLink(link: "https://www.youtube.com/embed/-D2-IQwmG-k"),
    YouTubeLink(link: "https://www.youtube.com/embed/CpNcsyEF60M"),
    YouTubeLink(link: "https://www.youtube.com/embed/Kpoyy0mWLKQ"),
    YouTubeLink(link: "https://www.youtube.com/embed/g64qZrBh5XQ"),
    YouTubeLink(link: "https://www.youtube.com/embed/tDkVC9qPLSA"),
    YouTubeLink(link: "https://www.youtube.com/embed/JQrvpad9vRQ"),
    YouTubeLink(link: "https://www.youtube.com/embed/fVEjxjFknZU")
    
]

struct Song: Identifiable {
    var id = UUID()
    var link: [String]
    var title: [String]
    var text: [String]
    var accords: [String]
}

let songsData = [
    Song(link: [], title: [], text: [""], accords: []),
    Song(link: ["https://www.youtube.com/embed/jlfnm6AyqqU",
                "https://www.youtube.com/embed/NTySGBsOgVI",
                "https://www.youtube.com/embed/IDn4RG3o1sM",
                "https://www.youtube.com/embed/92Z76fE9vOE",
                "https://www.youtube.com/embed/QTsX6nWCdZA"],
         title:["Урок 1 Как играть бой",
                "Урок 1 Медленный бой",
                "Урок 1 Как брать и играть аккорды",
                "Урок 1 Тренировка боя с аккордами",
                "Звезда по имени солнце Тренировка"],
         text:
["""
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
　　C(4)
Закрывая небесный свет.
　　　 Dm(4)
А над городом - желтый дым,
G(4)
Городу две тысячи лет,
　Dm(4)
Прожитых под светом Звезды
　　　　Am (4)
По имени Солнце...

　 　 　Am(4)
И две тысячи лет - война,
　　　　C(4)
Война без особых причин.
　Dm(4)
Война - дело молодых,
G(4)
Лекарство против морщин.
　 　 　Am(4)
Красная, красная кровь –
　　　　C(4)
Через час уже просто земля,
　　　 Dm(4)
Через два на ней цветы и трава,
G(4)
Через три она снова жива
　Dm(4)
И согрета лучами Звезды
　 　 　Am(4)
По имени Солнце...

　 　 　Am(4)
И мы знаем, что так было всегда,
　　　　C(4)
Что судьбою больше любим,
　　　 Dm(4)
Кто живет по законам другим
G(4)
И кому умирать молодым.
　 　 　Am(4)
Он не помнит слово "да" и слово "нет",
　　　　C(4)
Он не помнит ни чинов, ни имен.
　　　 Dm(4)
И способен дотянуться до звезд,
G(4)
Не считая, что это сон,
　　　 Dm(4)
И упасть, опаленным Звездой
　 　 　Am(4)
По имени Солнце...
"""], accords: ["Бой","am","c","dm","g"]),
    Song(link: ["https://www.youtube.com/embed/WesFphm_r2o",
                "https://www.youtube.com/embed/O8105dS3vH8",
                "https://www.youtube.com/embed/yA_YPd59SjI",
                "https://www.youtube.com/embed/q1C_eahgwZg"],
         title:["Урок 2 Медленная тренировка",
                "Урок 2 Как играть Аккорды",
                "Урок 2 Тренировка",
                "Урок 2 Пачка сигарет"],
         text: [
         """
         　 　 Em 　 　Am 　　 　　 　C　　 　 D 　　　Em
         Я сижу и смотрю в чужое небо из чужого окна
         　　Am　　　　C　　　D　　　　Em
         И не вижу ни одной знакомой звезды.
         　　Am　　　　　 C　　　D　　　　Em
         Я ходил по всем дорогам и туда, и сюда,
         　　Am　　　　 　 C　　　　 D　　　Em
         Обернулся - и не смог разглядеть следы.

         Припев:
         　　 　Am　　　　　　C　　D　　Em
         Но если есть в кармане пачка сигарет,
         　　 　Am　　　　　　C　　　　D　　　　　Em
         Значит все не так уж плохо на сегодняшний день.
         　　 Am　　　　C　　　　　D　　　　Em
         И билет на самолет с серебристым крылом,
         　　 　Am　　　　C　　　　D　　　Em
         Что, взлетая, оставляет земле лишь тень.

         　 Em 　 　Am 　　 　　 　C　　 　 D 　　　Em
         И никто не хотел быть виноватым без вина,
         　　Am　　　　C　　　D　　　　Em
         И никто не хотел руками жар загребать,
         　　Am　　　　　 C　　　D　　　　Em
         А без музыки на миру смерть не красна,
         　　Am　　　　 　 C　　　　 D　　　Em
         А без музыки не хочется пропадать.

         Припев:
         　　 　Am　　　　　　C　　D　　Em
         Но если есть в кармане пачка сигарет,
         　　 　Am　　　　　　C　　　　D　　　　　Em
         Значит все не так уж плохо на сегодняшний день.
         　　 Am　　　　C　　　　　D　　　　Em
         И билет на самолет с серебристым крылом,
         　　 　Am　　　　C　　　　D　　　Em
         Что, взлетая, оставляет земле лишь тень.
         """], accords: ["Бой","am","c","d","em"]),
    Song(link: ["https://www.youtube.com/embed/36u-J2goC4k",
                "https://www.youtube.com/embed/R4QdytFEl7U",
                "https://www.youtube.com/embed/blgOcORb26c",
                "https://www.youtube.com/embed/TQ57dOdU08c"],
         title:["Урок 3 Как играть Бой №2",
                "Урок 3 Тренировка боя",
                "Урок 3 Как играть Нам с тобой",
                "Урок 3 Нам с тобой"],
         text:      ["""
                    "Бой 1 / Вступление: Em D Em D C D Em D"
                    　　　　　Em 　　　　　D 　　　Em　　D
                    Здесь не понятно, где лицо, а где рыло,
                    　　　 С 　　　　　D 　　　　　Em　D
                    И не понятно, где пряник, где плеть.
                    　　　　Em 　　　　D 　　Em　　D
                    Здесь в сено не втыкаются вилы,
                    　　　　　H7 　　　　　　　　 C
                    Бой 2 / А рыба проходит сквозь сеть.

                    Бой 1/
                        Em 　　　　D 　　　Em　D
                    И не ясно, где море, где суша,
                    　　C 　　D 　　Em　D
                    Где золото, а где медь.
                    　　　　Em 　　　D 　　Em　　D
                    Что построить, и что разрушить,
                    　　　　　H7 　　　　　　　　C
                    Бой 2/ И кому, и зачем здесь петь?
                    
                    Припев
                    Бой 2 (весь припев)/
                    
                    　　　　Em(2) 　Am 　　　　D
                    Нам с тобой: голубых небес навес.
                    　　　　Em(2) 　　　Am 　　　 　D
                    Нам с тобой: станет лес глухой стеной.
                    　　　　Em(2) 　　Am 　　　 　 D　 　　Em(2)
                    Нам с тобой: из заплеванных колодцев не пить.
                    　　　Am 　D 　 Б1/　Em D Em D C D Em D
                    План такой - 　нам с тобой...

                    　　　　　Em 　　　　　D 　　　Em　　D
                    Здесь камни похожи на мыло,
                    　　　 С 　　　　　D 　　　　　Em　D
                    А сталь похожа на жесть,
                    　　　　Em 　　　　D 　　Em　　D
                    И слабость, как сила,
                    　　　　　H7 　　　　　　　　C
                    Бой 2/ И правда, как лесть.

                    Бой 1/
                        Em 　　　　D 　　　Em　D
                    И не ясно, где мешок, а где шило,
                    　　C 　　D 　　Em　D
                    И не ясно, где обида, а где месть.
                    　　　　Em 　　　D 　　Em　　D
                    И мне не нравится то, что здесь было,
                    　　　　　H7 　　　　　　　　C
                    Бой 2/ И мне не нравится то, что здесь есть.

                    Припев
                    Бой 2 (весь припев)/
                    　　　　Em(2) 　Am 　　　　D
                    Нам с тобой: голубых небес навес.
                    　　　　Em(2) 　　　Am 　　　 　D
                    Нам с тобой: станет лес глухой стеной.
                    　　　　Em(2) 　　Am 　　　 　 D　 　　Em(2)
                    Нам с тобой: из заплеванных колодцев не пить.
                    　　　Am 　D 　 Б1/　Em D Em D C D Em D
                    План такой - 　нам с тобой...

                    　　　　　　　Am 　　　　　　　　D 　　　　　Em (2)
                    Черная ночь да в реке вода - нам с тобой.
                    　　　Am 　　　　　　　　D 　　　　　Em (2)
                    И беда станет не беда. Уезжай!..
                    　　　　Am 　　　　　　　　D 　　　　　　　Em (2)
                    Так, была не была, прости и прощай!..
                    　　　　　　Am 　D 　　　　　　Em (2)
                    План такой - 　　нам с тобой...
                    """], accords: ["Бой2","Аккорды3_1","Аккорды3_2","am","c","d","em","h7"]),
    Song(link: ["https://www.youtube.com/embed/RIFPiJ8InRk",
                "https://www.youtube.com/embed/pCFeDZRMBe4",
                "https://www.youtube.com/embed/jmM_TGreSdU",
                "https://www.youtube.com/embed/8mwLBJyN-eg"],
         title:["Урок 4 Медленная тренировка боя",
                "Урок 4 Просвистела медленный темп",
                "Урок 4 Просвистела оригинальный темп",
                "Урок 4 Что такое осень"],
         text:      ["""
                    Вся песня играется Боем2,
                    по одному бою на аккорд,
                    в припеве щелчки не глушим.

                    Em 　　 С 　G　H7　　　　Em
                    Просвистела и упала на столе,
                    　　　C　 G　　　H7　　　　　Em
                    Чуть поела, да скатилась по золе.
                    　　　　C　 G 　　　　H7　　　　Em
                    Убитых песен, да - мне нечего терять.
                    　　　　 C　 G　　　　　H7　　　　Em
                    Мир так тесен - дай-ка, брат, тебя обнять.
                    　С　G　H7　　Em
                    Оо о-о о-о-о-о о-о

                    Em 　　 С 　G　H7　　　　Em
                    Всюду черти - надави, брат, на педаль.
                    　　　C　 G　　　H7　　　　　Em
                    Час до смерти, да сгоревшего не жаль,
                    　　　C　 G　　　H7　　　　　Em
                    А в чистом поле - ангелочки, васильки.
                    　　　C　 G　　　H7　　　　　Em
                    Мы на воле, и нет ни гари, ни тоски.
                    　С　G　H7　　Em
                    Оо о-о о-о-о-о о-о

                    Em 　　 С 　G　H7　　　　Em
                    А на небе встретят Сашка, да Илья,
                    　　　C　 G　　　H7　　　　　Em
                    Хватит хлеба, да сто грамм - без них нельзя.
                    　　　C　 G　　　H7　　　　　Em
                    Что нам плакать, здесь не срам, чего страдать.
                    　　　C　 G　　　H7　　　　　Em
                    Рай не слякоть, вьюга - наша благодать.
                    　С　G　H7　　Em
                    Оо о-о о-о-о-о о-о

                    Em 　　 С 　G　H7　　　　Em
                    Все расскажем про восход и про закат,
                    　　　C　 G　　　H7　　　　　Em
                    Горы сажи, да про горький мармелад,
                    　　　C　 G　　　H7　　　　　Em
                    Что доели, когда закончили войну.
                    　　　C　 G　　　H7　　　　　Em
                    То как сели мы на Родине - в плену.
                     　С　G　H7　　Em
                    Оо о-о о-о-о-о о-о

                    Em 　　 С 　G　H7　　　　Em
                    Просвистела и упала на столе.
                    　　　C　 G　　　H7　　　　　Em
                    Чуть поела, да скатилась по золе.
                    　　　C　 G　　　H7　　　　　Em
                    Убитых песен, да мне нечего терять.
                    　　　C　 G　　　H7　　　　　Em
                    Мир так тесен, дай-ка, брат, тебя обнять.
                    　С　G　H7　　Em
                    Оо о-о о-о-о-о о-о
                    """,
                    """
                    Урок 4 - Что такое осень- ддт

                    Играется Боем 2 вся песня, в припеве щелчки не глушим. Если видите цифру в скобочках после аккорда (2) к примеру, значит этот аккорд играть два раза боем, если цифры нет, то один раз.

                    Em　　　　　H7　　　　　　Em (2)
                    Что такое осень? Это небо.
                    　E7 (2)　　　　　　　　　　Am (2)
                    Плачущее небо под ногами.
                    　Am　　　　　　　D　　　　G　　　　　　　C
                    В лужах разлетаются птицы с облаками
                    Am　　　　H7　　　　　　　　Em　　　E7
                    Осень я давно с тобою не был.
                    　Am　　　　　　　D　　　　G　　　　　　　　C
                    В лужах разлетаются птицы с облаками
                    Am　　　　　　H7　　　　　　Em (2)
                    Осень я давно с тобою не был.
                    Припев:
                    Em (2)　　　　　　Am　　　　H7
                    Осень в небе, жгут корабли
                    Em (2)　　　　　　Am　　　　　　H7
                    Осень мне бы, прочь от земли
                    Am　　　　　　D　 G　　　 　　C
                    Там, где в море тонет печаль
                    Am (2)　　　　　　H7 (2)
                    Осень темная даль.

                    Em　　　　　H7　　　　　Em (2)
                    Что такое осень? Это камни
                    　E7 (2)　　　　　　　　　 　Am (2)
                    Верность над чернеющей Невою
                    　Am　　　　　　　D　　　　G　　　　　　　C
                    Осень вновь напомнила душе о самом главном
                    Am　　　　H7　　　　　　　　Em　　　E7
                    Осень я опять лишен покоя.
                    　Am　　　　　　　D　　　　G　　　　　　　C
                    Осень вновь напомнила душе о самом главном
                    Am　　　　　　H7　　　　　　Em (2)
                    Осень я опять лишен покоя.
                    Припев:
                    Em (2)　　　　　　Am　　　　H7
                    Осень в небе, жгут корабли
                    Em (2)　　　　　　Am　　　　　　H7
                    Осень мне бы, прочь от земли
                    Am　　　　　　D　 G　　　 　　C
                    Там, где в море тонет печаль
                    Am (2)　　　　　　H7 (2)
                    Осень темная даль.

                    Em　　　　　H7　　　　　Em (2)
                    Что такое осень? Это ветер
                    　E7 (2)　　　　　　　　　 　Am (2)
                    Вновь играет рваными цепями
                    　Am　　　　　　　D　　　　G　　　　　　　C
                    Осень доползем ли, долетим ли до ответа
                    Am　　　　H7　　　　　　　　Em　　　E7
                    Что же будет с родиной и с нами.
                    　Am　　　　　　　D　　　　G　　　　　　　C
                    Осень доползем ли, долетим ли до рассвета
                    Am　　　　　　H7　　　　　　Em (2)
                    Что же будет завтра с нами.
                    Припев:
                    Em (2)　　　　　　Am　　　　H7
                    Осень в небе, жгут корабли
                    Em (2)　　　　　　Am　　　　　　H7
                    Осень мне бы, прочь от земли
                    Am　　　　　　D　 G　　　 　　C
                    Там, где в море тонет печаль
                    Am (2)　　　　　　H7 (2)
                    Осень темная даль.

                    Em (2)　　　　　　Am　　　　H7
                    Осень в небе, жгут корабли
                    Em (2)　　　　　　Am　　　　　　H7
                    Осень мне бы, прочь от земли
                    Am　　　　　　D　 G　　　 　　C
                    Там, где в море тонет печаль
                    Am (2)　　　　　　H7 (2)
                    Осень темная даль.

                    Em (2)　　　　　　Am　　　　H7
                    Тает стаей город во мгле
                    Em (2)　　　　　　Am　　　　　　H7
                    Осень что я знал о тебе
                    Am　　　　　　D　 G　　　 　　C
                    Сколько будет рваться листва
                    Am (2)　　　　　　H7 (2)
                    Осень вечно права
                    """], accords: ["Бой2","Аккорды","em","c","g","h7","e7","Аккорды4_1","Аккорды4_2","Аккорды4_3","Аккорды4_4","Аккорды4_5"]),
    Song(link: ["https://www.youtube.com/embed/o8amWb3vvHg",
                "https://www.youtube.com/embed/WkboxZe1Wis",
                "https://www.youtube.com/embed/N22_kaUSmG4",
                "https://www.youtube.com/embed/NJU_cwgFDvo",
                "https://www.youtube.com/embed/U1WMQ9TKqko"],
         title:["Урок 5 Как играть перебор + Тренировка",
                "Урок 5 Как играть бой + Тренировка",
                "Урок 5 Как играть куплет с припевом",
                "Урок 5 Как играть Прогулки по воде",
                "Урок 5 Прогулки по воде"],
         text:      ["""
                    1куплет/ перебором

                    　　　Em (2)
                    С пpичала pыбачил апостол Андpей
                    　　H7 (2)
                    А Спаситель ходил по воде
                    　　Am (2)
                    И Андpей доставал из воды пескаpей
                    　　　Em (2)
                    А Спаситель погибших людей
                    　　　Em (2)
                    И Андpей закpичал: я покину пpичал
                    　　　H7 (2)
                    Если ты мне откpоешь секpет
                    　　　Am (2)
                    И Спаситель ответил: Спокойно Андpей
                    　　　Em (2)
                    Никакого секpета здесь нет

                    Припев/ начинаем играть боем

                    　G　　　　　　　D Am　　　　　　　Em
                    Видишь там на гоpе 　　возвышается кpест
                    　　 G　　　　　　　D　Am　　　　　　　H7
                    Под ним десяток солдат　　 повиси-ка на нем
                    G　　　　　D　Am　　　　　　　Em
                    А когда надоест 　возвpащайся назад
                    　　G
                    Гулять по воде
                    　　D
                    Гулять по воде
                    　　Am　　　　　　H7
                    Гулять по воде со мной

                    Куплет 2/ продолжаем играть боем

                    　　　Em (2)
                    Hо учитель на касках блистают pога
                    　　H7 (2)
                    Чеpный воpон кpужит над кpестом
                    　　Am (2)
                    Объясни мне сейчас пожалей дуpака
                    　　　Em (2
                    А pаспятье оставь на потом
                    　　　Em (2
                    Онемел Спаситель и топнул в сеpдцах
                    　　H7 (2)
                    По водной глади ногой
                    　　Am (2)
                    Ты и веpно дуpак и Андpей в слезах
                    　　　Em (2
                    Побpел с пескаpями домой

                    Припев2/ Перестаем глушить щелчки

                    　G　　　　　　　D Am　　　　　　　Em
                    Видишь там на гоpе 　　возвышается кpест
                    　　 G　　　　　　　D　Am　　　　　　　H7
                    Под ним десяток солдат　　 повиси-ка на нем
                    G　　　　　D　Am　　　　　　　Em
                    А когда надоест 　возвpащайся назад
                    　　G
                    Гулять по воде
                    　　D
                    Гулять по воде
                    　　Am　　　　　　H7
                    Гулять по воде со мной

                    　G　　　　　　　D Am　　　　　　　Em
                    Видишь там на гоpе 　　возвышается кpест
                    　　 G　　　　　　　D　Am　　　　　　　H7
                    Под ним десяток солдат　　 повиси-ка на нем
                    G　　　　　D　Am　　　　　　　Em
                    А когда надоест 　возвpащайся назад
                    　　G
                    Гулять по воде
                    　　D
                    Гулять по воде
                    　　Am　　　　　　H7
                    Гулять по воде со мной
                    """], accords: ["Бой5","em","h7","am","g","d","Аккорды5_1","Аккорды5_2","Аккорды5_3","Перебор","Тоника"]),
    Song(link: ["https://www.youtube.com/embed/vXjr8s6G0So",
                "https://www.youtube.com/embed/Z70qIp4BNiM",
                "https://www.youtube.com/embed/ycHQU6Wini8",
                "https://www.youtube.com/embed/NQOSmEbc3hk",
                "https://www.youtube.com/embed/S_MY-suSJh0",
                "https://www.youtube.com/embed/amCa6IWE0Qw"],
         title:["Урок 6 Первый способ + Тренировка",
                "Урок 6 Второй способ + Тренировка",
                "Урок 6 Оба способа одновременно",
                "Урок 6 Как играть бой + Тренировка",
                "ДДТ - Метель",
                "Кино - Когда твоя девушка больна"],
         text:      ["""
                    Урок 6/ ДДТ- Метель

                    1 Куплет/ Играем перебором

                    Em　　C　　　　G　D
                    　Коронована луной,
                    Em　　　C　　　　G　D
                    　Как начало - высока,
                    Em　　　C　　　　　　G　D
                    　Как победа - не со мной,
                    Em　　　C　　　　　G　D
                    　Как надежда - нелегка.
                    Em　　 C　　　　　　G　D
                    　За окном стеной метель,
                    Em　　　　　C　　　　 G　D
                    　Жизнь по горло занесло.
                    Em　　　C　　　　　　G　D
                    　Сорвало финал с петель,
                    Em　　C　　　　　G　D
                    　Да поела всё тепло.

                    Припев/ Начинаем играть боем
                    Em　　　　C　　　　　G
                    Играй как можешь, сыграй
                    　　　　　D　　　 Em
                    Закрой глаза и вернись
                    　　　　 C　　　　G
                    Не пропади, но растай
                    　　　 D　　　　Em
                    Да колее поклонись,
                    　　　 C　　　G
                    Моё окно отогрей,
                    　　　　　D　　　Em
                    Пусти по полю весной,
                    　　　　C　　　　G
                    Не доживи, но созрей,
                    　　　　　D　　　　　Em
                    И будешь вечно со мной
                    　　　　　C　　　　G
                    И будешь вечно со мной
                    　　　　　D　　　　 Em C G D
                    И будешь вечно со мной
                    Em
                    Со мной

                    2 куплет/ опять перебором с боем

                    Em　　C　　　　G　D
                    Ищут землю фонари,
                    Em　　C　　　　G　D
                    К небу тянется свеча,

                    Em　　C　　　　G　D
                    На снегу следы зари,
                    Em　　C　　　　G　D
                    Крылья павшего луча,
                    Em　　C　　　　G　D
                    Что же, вьюга, наливай,
                    Em　　C　　　　G　D
                    Выпьем время натощак,
                    Em　　C　　　　G　D
                    Я спою, ты в такт пролай
                    Em　　C　　　　G　D
                    О затерянных вещах

                    И припев (так же как первый припев)

                    Em　　　　C　　　　　G
                    Играй как можешь, сыграй
                    　　　　　D　　　 Em
                    Закрой глаза и вернись
                    　　　　 C　　　　G
                    Не пропади, но растай
                    　　　 D　　　　Em
                    Да колее поклонись,
                    　　　 C　　　G
                    Моё окно отогрей,
                    　　　　　D　　　Em
                    Пусти по полю весной,
                    　　　　C　　　　G
                    Не доживи, но созрей,
                    　　　　　D　　　　　Em
                    И будешь вечно со мной
                    　　　　　C　　　　G
                    И будешь вечно со мной
                    　　　　　D　　　　 Em C G D
                    И будешь вечно со мной
                    　　Em
                    Со мной

                    Em　　C　　　　G　D
                    Осторожно, не спеша,
                    Em　　C　　　　G　D
                    С белым ветром на груди,
                    Em　　C　　　　G　D
                    Где у вмерзшей в лед ладьи
                    Em　　C　　　　G　D
                    Ждет озябшая душа...
                    """,
                    """
                    Урок 6 – Кино, Когда твоя девушка больна,
                    Вся песня боем 2 по одному разу на каждом аккорде

                    G　　　　　 Em
                    　День как день
                    　　　　C　　　　　　　D
                    Только ты почему-то грустишь
                    G　　　　　　　 Em
                    　И вокруг все поют
                    C　　　　　　　　　　D
                    　Только ты один молчишь
                    G　　　　　　　Em
                    　Потерял аппетит
                    　　　C　　　　　　　　 D
                    И не хочешь сходить в кино
                    G　　　　　　　　Em
                    Ты идешь в магазин
                    　C　　　　　　D
                    Чтобы купить вино
                    Припев:
                    C　　　　　　　　　D
                    Солнце светит, и растет трава
                    　　　G　　　　　　Em
                    Но тебе она не нужна
                    　C　　　　　 D
                    Все не так, и все не то
                    　　G　　　　　　　　　Em
                    Когда твоя девушка больна
                    C　　　 D　　G　　　　　　　　　Em
                    М-м м-м-м Когда твоя девушка больна
                    C　　　 D　　G　　　　　　　　　Em
                    М-м м-м-м Когда твоя девушка больна
                    C　　　 D　　　　　　G
                    М-м м-м-м Когда больна...

                    G　　　　　 Em
                    Ты идешь в магазин
                    　　　C　　　　D
                    Головою поник
                    G　　　　　 Em
                    Как будто иссяк
                    　　　C　　　　D
                    Чистый горный родник
                    G　　　　　 Em
                    Она где-то лежит
                    　　　C　　　　D
                    Ест мед и пьет аспирин
                    G　　　　　 Em
                    И вот ты идешь
                    　　　C　　　　D
                    На вечеринку один

                    Припев:
                    C　　　　　　　　　D
                    Солнце светит, и растет трава
                    　　　G　　　　　　Em
                    Но тебе она не нужна
                    　C　　　　　 D
                    Все не так, и все не то
                    　　G　　　　　　　　　Em
                    Когда твоя девушка больна
                    C　　　 D　　G　　　　　　　　　Em
                    М-м м-м-м Когда твоя девушка больна
                    C　　　 D　　G　　　　　　　　　Em
                    М-м м-м-м Когда твоя девушка больна
                    C　　　 D　　　　　　G
                    М-м м-м-м Когда больна...
                    """], accords: ["Перебор-1","Тоника","em","c","g","d","Бой6_1","Бой6_2","Бой6_3","Аккорды6_1","Аккорды6_2","Аккорды6_3"]),
    Song(link: ["https://www.youtube.com/embed/aR-jqbHRRpw",
                "https://www.youtube.com/embed/RMOzr_Upras",
                "https://www.youtube.com/embed/EFvX19kLoNQ",
                "https://www.youtube.com/embed/Uu_yiDzPyJ8",
                "https://www.youtube.com/embed/e3XhBLV6cus",
                "https://www.youtube.com/embed/J8k1u3qyphE",
                "https://www.youtube.com/embed/iEHyiA2lXXs"],
         title:["Урок 7 Как играть перебор + Тренировка",
                "Урок 7 Первый способ + Тренировка",
                "Урок 7 Как играть бой + Тренировка",
                "Урок 7 Тренировка куплета",
                "Урок 7 Тренировка припева",
                "Сплин - Мое сердце",
                "Сектор Газа - Лирика"],
         text:      ["""
                    Урок 7 – Сплин, Мое сердце,
                    бой с перебором и перебор

                    1 куплет/ играется боем с перебором

                    　　　　G (2)　　　　　　C　　　G
                    Мы не знали друг друга до этого лета
                    　　　　C　　　　 G　　　 D　　　Em
                    Мы болтались по свету, земле и воде
                    　　　　G (2)　　　　　　　 C　　　G
                    И совершенно случайно мы взяли билеты
                    　　　C　　　 G　　　　　　 D　　　Em
                    На соседнее кресло на большой высоте

                    Припев:/ боем 1

                    　　 G (2)　C　　　G
                    Мое сердце остановилось,
                    　　 G (2)　D　　Em
                    Мое сердце замерло,
                    　　 G (2)　C　　　G
                    Мое сердце остановилось,
                    　　 G (2)　D　　Em
                    Мое сердце замерло.

                    　　　　G (2)　　　　　　C　　　G
                    И ровно тысячу лет мы просыпаемся вместе
                    　　　　C　　　　 G　　　 D　　　Em
                    Даже если уснули в разных местах.
                    　　　　G (2)　　　　　　　 C　　　G
                    Мы идём ставить кофе под Элвиса Пресли,
                    　　　C　　　 G　　　　　　 D　　　Em
                    Кофе сбежал под PropellerHeads, ах!

                    Припев:/ боем 1

                    　　 G (2)　C　　　G
                    Мое сердце остановилось,
                    　　 G (2)　D　　Em
                    Мое сердце замерло,
                    　　 G (2)　C　　　G
                    Мое сердце остановилось,
                    　　 G (2)　D　　Em
                    Мое сердце замерло.

                    　　　　G (2)　　　　　　C　　　G
                    И, может быть, ты не стала звездой в Голливуде
                    　　　　C　　　　 G　　　 D　　　Em
                    Не выходишь на подиум в нижнем белье
                    　　　　G (2)　　　　　　　 C　　　G
                    У тебя не берут автографы люди,
                    　　　C　　　 G　　　　　　 D　　　Em
                    И поёшь ты чуть тише, чем Монсерат Кобалье

                    　　　　G (2)　　　　　　C　　　G
                    Ну так и я,слава Богу, не Ricky, не Martin,
                    　　　　C　　　　 G　　　 D　　　Em
                    Не выдвигался на Оскар, французам не забивал
                    　　　　G (2)　　　　　　　 C　　　G
                    Моим именем не назван город на карте,
                    　　　C　　　 G　　　　　　 D　　　Em
                    Но задёрнуты шторы и разложен диван

                    Припев:/ боем 1

                    　　 G (2)　C　　　G
                    Мое сердце остановилось,
                    　　 G (2)　D　　Em
                    Мое сердце замерло,
                    　　 G (2)　C　　　G
                    Мое сердце остановилось,
                    　　 G (2)　D　　Em
                    Мое сердце замерло.

                    Проигрыш: G  C  G  D  Em }x2

                                    G (2)                        C             G
                    Я наяву вижу то, что многим даже не снилось,
                               C                       G        D               Em
                    Не являлось под кайфом, не стучалось в стекло.
                                      G (2)                        C             G
                    Мое сердце остановилось, отдышалось немного
                                 C   G  D  Em
                    И снова пошло.

                    Припев:/ боем 1

                    　　 G (2)　C　　　G
                    Мое сердце остановилось,
                    　　 G (2)　D　　Em
                    Мое сердце замерло,
                    　　 G (2)　C　　　G
                    Мое сердце остановилось,
                    　　 G (2)　D　　Em
                    Мое сердце замерло.
                    """,
                    """
                    Урок 7 - Сектор газа, Лирика

                    1 куплет / играем перебором

                    　　 Am　　　　　　　　G
                    Сигаpета мелькает во тьме,
                    　　　Dm　　　　　　　　　　Am
                    Ветеp пепел в лицо швыpнyл мне.
                    　　Am　　　　　　　　 G　　　　　　　　　　Dm　　Am
                    И обyгленный фильтp на пальцах мне оставил ожо-о-о-ог...
                    　　　　　Am　　　　　　　　G
                    Скpипнyв сталью, откpылася двеpь.
                    　　 Dm　　　　　　Am
                    Ты идешь, ты моя тепе-е-еpь,
                    　　　Am　　　　　　　G　　　　　　　Dm　　Am
                    Я пpиятнyю дpожь ощyщаю с головы до ног...

                    Припев / Играем боем

                    　　　　С　　　　　　　 G
                    Ты со мною забyдь обо всем.
                    　　 Dm　　　　　　　　　Am
                    Эта ночь нам покажется сном.
                    　　　C　　　　　　　G　　　　　　　Am (2)
                    Я возьмy тебя и пpижмy как pоднyю дочь!
                    　　　C　　　　　　 G
                    Hас окyтает дым сигаpет.
                    　　　Dm　　　　　　　　　 Am
                    Ты yйдешь, как настанет pассвет.
                    　　　C　　　　　　　G　　　　　　　　　　　Am (2)
                    И следы на постели напомнят пpо счастливyю ночь.

                    Am                             G
                    Эротичный лунный свет
                                Dm                           Am
                    Запретит сказать тебе "нет".
                           Am                                G           Dm  Am
                    И опустится плавно на пол все твое белье-о-о-о.
                    Am                                     G
                    Шум деревьев и ветер ночной
                                   Dm                      Am
                    Стон заглушат твой и мой
                            Am                               G         Dm   Am
                    И биение сердца, пылающего адским огнем!

                    Припев / Играем боем

                    　　　　С　　　　　　　 G
                    Ты со мною забyдь обо всем.
                    　　 Dm　　　　　　　　　Am
                    Эта ночь нам покажется сном.
                    　　　C　　　　　　　G　　　　　　　Am (2)
                    Я возьмy тебя и пpижмy как pоднyю дочь!
                    　　　C　　　　　　 G
                    Hас окyтает дым сигаpет.
                    　　　Dm　　　　　　　　　 Am
                    Ты yйдешь, как настанет pассвет.
                    　　　C　　　　　　　G　　　　　　　　　　　Am (2)
                    И следы на постели напомнят пpо счастливyю ночь.

                    Am                                G
                    Твои бедра - сиянье луны -
                           Dm                                   Am
                    Так прекрасны и мне так нужны.
                               Am                                G            Dm Am
                    Кровь тяжелым напором ударит прямо в сердце мне.
                    Am                                  G
                    Груди плавно качнутся в ночи.
                           Dm                                    Am
                    Слышишь, как мое сердце стучит.
                        Am                                         G            Dm Am
                    Два пылающих тела сольются в ночной тишине!

                    Припев / Играем боем

                    　　　　С　　　　　　　 G
                    Ты со мною забyдь обо всем.
                    　　 Dm　　　　　　　　　Am
                    Эта ночь нам покажется сном.
                    　　　C　　　　　　　G　　　　　　　Am (2)
                    Я возьмy тебя и пpижмy как pоднyю дочь!
                    　　　C　　　　　　 G
                    Hас окyтает дым сигаpет.
                    　　　Dm　　　　　　　　　 Am
                    Ты yйдешь, как настанет pассвет.
                    　　　C　　　　　　　G　　　　　　　　　　　Am (2)
                    И следы на постели напомнят пpо счастливyю ночь.
                    """], accords: ["Перебор-2","g","c","d","em","dm","am","Бой","Бой6_2","Тоника-1","Бой7"]),
    Song(link: ["https://www.youtube.com/embed/nge2cJHGL1A",
                "https://www.youtube.com/embed/rfl0zLMBGYE"],
         title:["Урок 8 Тренировка одного баррэ",
                "Урок 8 Тренировка со всеми баррэ"],
         text:      ["""
                    Урок 8 – Кино, Кукушка, учимся ставить баррэ (баре)
                    Первые дня три поиграйте аккорды А и G не на баре, а потом пробуйти сыграть всю песню на баре.

                    Играется вся боем 2

                    Hm (4)
                    Песен еще не написанных сколько
                    　　　　A　　　G　　　Hm (2)
                    Скажи кукушка 　　пропой
                    　　Hm (4)
                    В городе мне жить или на выселках
                    　　　　　　　　　　　　　　　A　　G　　　Hm (2)
                    Камнем лежать или гореть звездой 　　звездой

                    Припев:
                    A　　　　　G　　　　　　　Hm (2)
                    　Солнце мое взгляни на меня
                    A　　　　G　　　　　　　　　　Hm (2)
                    　Моя ладонь превратилась в кулак
                    A　　　　 　　G　　　　　Hm (2)
                    　И если есть порох дай огня
                    A　G　　　Hm (2)
                    　　　Вот так

                    Hm (4)
                    Кто пойдет по следу одинокому
                    　　　　　　　　　　　　　　　A　　　G　　　Hm (2)
                    Сильные да смелые головы сложили в поле в бою
                    　　Hm (4)
                    Мало кто остался в светлой памяти
                    　　　　　　　　　　　　　　　A　　G　　　Hm (2)
                    В трезвом уме да с твердой рукой в строю в строю

                    Припев:
                    A　　　　　G　　　　　　　Hm (2)
                    　Солнце мое взгляни на меня
                    A　　　　G　　　　　　　　　　Hm (2)
                    　Моя ладонь превратилась в кулак
                    A　　　　 　　G　　　　　Hm (2)
                    　И если есть порох дай огня
                    A　G　　　Hm (2)
                    　　　Вот так

                    Hm (4)
                    Где же ты теперь воля вольная
                    　　　　A　　　G　　　Hm (2)
                    С кем же ты теперь ласковый рассвет встречаешь ответь
                    　　Hm (4)
                    Хорошо с тобой да плохо без тебя
                    　　　　　　　　　　　　　　　A　　G　　　Hm (2)
                    Головы да плечи терпеливые под плеть под плеть
                    Припев:
                    A　　　　　G　　　　　　　Hm (2)
                    　Солнце мое взгляни на меня
                    A　　　　G　　　　　　　　　　Hm (2)
                    　Моя ладонь превратилась в кулак
                    A　　　　 　　G　　　　　Hm (2)
                    　И если есть порох дай огня
                    A　G　　　Hm (2)
                    　　　Вот так
                    """], accords: ["Бой2","hm","a","g","d","Бой6_1","Аккорды8_1","Аккорды8_2","Аккорды8_3","Аккорды8_4"]),
    Song(link: ["https://www.youtube.com/embed/q1KV8qWWiKg",
                "https://www.youtube.com/embed/laR3MsW1vbo",
                "https://www.youtube.com/embed/BWThBvEVc98",
                "https://www.youtube.com/embed/P9shCNCpP9M",
                "https://www.youtube.com/embed/ZkssJvR7s_A"],
         title:["Урок 9 Тренировка аккордов с баррэ",
                "Урок 9 Тренировка песни ЗПИС",
                "Урок 9 Тренировка Дыхание медленно",
                "Урок 9 Тренировка Дыхание",
                "Урок 9 Наутилус Помпилиус - Дыхание"],
         text:      ["""
                    Урок 9 – Учимся быстро переставлять баррэ

                    1. Звезда по имени солнце на баррэ (смотри урок №1, только бери эти аккорды на баррэ)
                    2. Дыхание- Наутилус Помпилиус / Вся песня боем №2 по одному разу на аккорде.

                    F　　　　　　C　　　　　　 Dm
                    Я просыпаюсь в холодном поту,
                    　　　　　　 A　　　　　　　　A# (баррэ на первом ладу)
                    Я просыпаюсь в кошмарном бреду.
                    　　　　　　　　 F　　　　　Gm
                    Как будто дом наш залило водой
                    　　　　　　　　　　　 Dm (баррэ)
                    И что в живых остались только мы с тобой.

                    F　　　　　　　 C　　　　　　 Dm
                    　И что над нами километры воды,
                    　　　　　　　 A　　　　　　　　　A# (баррэ на первом ладу)
                    И что над нами 　бьют хвостами киты,
                    　　　　　　F
                    И кислорода　 не хватит на двоих.
                    Gm　　　　　　　Dm (баррэ)
                    　Я лежу в темноте.

                    　Припев/

                    Dm (баррэ)　　C (баррэ на 8 ладу)
                    Слушая наше дыхание.
                    　　Dm (баррэ)　　A# (баррэ на 6 ладу)
                    Я слушаю наше дыхание.
                    　Dm (баррэ)　　　　　　 C (баррэ на 8 ладу)
                    Я раньше и не думал,что у нас
                    　　　Dm (баррэ)　　　　　　A# (баррэ на 6 ладу)
                    на двоих с тобой одно лишь дыхание.

                    F　　　　　　C　　　　　　 Dm
                    Я пытаюсь разучиться дышать,
                    　　　　　　 A　　　　　　　　A# (баррэ на первом ладу)
                    Что б тебе хоть на минуту отдать,
                    　　　　　　　　 F　　　　　Gm
                    Того газа, что не умели ценить,
                    　　　　　　　　　　　 Dm (баррэ)
                    Но ты спишь и не знаешь,
                    F　　　　　　C　　　　　　 Dm
                    Что над нами километры воды
                    　　　　　　 A　　　　　　　　A# (баррэ на первом ладу)
                    И что над нами бьют хвостами киты,
                    　　　　　　　　 F　　　　　Gm
                    И кислорода не хватит на двоих.
                    　　　　　　　　　　　 Dm (баррэ)
                    Я лежу в темноте.

                    　Припев/

                    Dm (баррэ)　　C (баррэ на 8 ладу)
                    Слушая наше дыхание.
                    　　Dm (баррэ)　　A# (баррэ на 6 ладу)
                    Я слушаю наше дыхание.
                    　Dm (баррэ)　　　　　　 C (баррэ на 8 ладу)
                    Я раньше и не думал,что у нас
                    　　　Dm (баррэ)　　　　　　A# (баррэ на 6 ладу)
                    на двоих с тобой одно лишь дыхание.
                    """], accords: ["Бой","f","c","c(баррэ)","dm","dm(баррэ)","am(баррэ)","a","a#","gm","Аккорды9_1","Аккорды9_2","Аккорды9_3","Аккорды9_4","Аккорды9_5"]),
    Song(link: ["https://www.youtube.com/embed/81XrznEvLoA",
                "https://www.youtube.com/embed/_cdFhr2R-SY",
                "https://www.youtube.com/embed/LEt-MwMwTmA"],
         title: ["Урок 10 Тренировка вступления",
                 "Урок 10 Тренировка припева",
                 "Урок 10 Тренировка второго и третьего куплета"],
         text: ["""
            Урок 10 – Батарейка, Жуки


            Первый куплет/ Перебор с боем

            Am　　　　G　　　　　　F　　　E
            Холодный ветер с дождем усилился стократно
            Am　　　G　　　　　F　　　　　E
            Все говорит об одном, что нет пути обратно,
            Am　　　　G　　　　　F　　　E
            Что ты не мой лопушок, а я не твой Андрейка,
            Am　　　　G　　　　 F　　E (на этом аккорде переходим на бой, щелчок не глушим)
            Что у любви у нашей села батарейка.

            Припев/ боем, щелчек не глушим

            Am G　　　F　E
            О-у-ё-и-я-и-ё! Батарейка
            Am G　　　F　E
            О-у-ё-и-я-и-ё! Батарейка

            2 куплет/ боем, щелчок начинаем глушим

            Am　　 G　　　　　F　　　　E
            Я тосковал по тебе в минуты расставанья,
            Am　　　　G　　　　　F　　　　　　　E
            Ты возвращалась ко мне сквозь сны и расстоянья,
            Am　　　　G　　　　 F　　　　　　E
            Но несмотря ни на что пришла судьба-злодейка,
            Am　　　G　　　　F　　E (на этом аккорде перестаем глушить щелчок)
            И у любви у нашей села батарейка.

            Припев/ боем, щелчек не глушим

            Am G　　　F　E
            О-у-ё-и-я-и-ё! Батарейка
            Am G　　　F　E
            О-у-ё-и-я-и-ё! Батарейка

            3 куплет/ глушим щелчок и играем бой из трех ударов

            Am　　　 G　　　　　F　　　　　　E
            И вроде все как всегда : все те же чашки-ложки,
            Am　　 　　　G　　　 F　　　　　　E
            Все та же в кране вода все тот же стул без ножки,
            Am　　 G　　　　　 F　　　　　E
            И все о том же с утра щебечет канарейка,
            Am　　 　　G　　　　　F　　E (эту строчку уже играем боем из припева)
            Лишь у любви у нашей села батарейка



            Припев/ боем, щелчек не глушим

            Am G　　　F　E
            О-у-ё-и-я-и-ё! Батарейка
            Am G　　　F　E
            О-у-ё-и-я-и-ё! Батарейка
            """], accords: ["Перебор","am(баррэ)","g(баррэ)","f","e","Бой6_1","Бой10","Аккорды10"])
]

extension Color: RawRepresentable {

    public init?(rawValue: String) {
        
        guard let data = Data(base64Encoded: rawValue) else{
            self = .black
            return
        }
        
        do{
            let color = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? UIColor ?? .black
            self = Color(color)
        }catch{
            self = .black
        }
        
    }

    public var rawValue: String {
        
        do{
            let data = try NSKeyedArchiver.archivedData(withRootObject: UIColor(self), requiringSecureCoding: false) as Data
            return data.base64EncodedString()
            
        }catch{
            
            return ""
            
        }
        
    }

}
