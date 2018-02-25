//
//  DataClass.swift
//  ReBuilding
//
//  Created by Максим Балахонов on 14.01.18.
//  Copyright © 2018 Максим Балахонов. All rights reserved.
//

import UIKit

var dataArray: [DataClass] = []
let rowOfItemsForCalculating = ["Кирпичи", "Клей", "Доски", "Плитка", "Гвозди", "Блоки"]
let rowOfClassesForCalculating = [
    0: DataClass(nameOfItem: "Кирпичи", nameOfItemWithInc: "кирпичей", imageOfItem: UIImage(named: "кирпич")!, arrayForRaschet: rowOfRaschetForTag0),
    1: DataClass(nameOfItem: "Клей", nameOfItemWithInc: "клея", imageOfItem: UIImage(named: "клейчик")!, arrayForRaschet: rowOfRaschetForTag1),
    2: DataClass(nameOfItem: "Доски", nameOfItemWithInc: "досок", imageOfItem: UIImage(named: "шурупчик")!, arrayForRaschet: rowOfRaschetForTag2),
    3: DataClass(nameOfItem: "Плитка", nameOfItemWithInc: "плитки", imageOfItem: UIImage(named: "шурупчик")!, arrayForRaschet: rowOfRaschetForTag3),
    4: DataClass(nameOfItem: "Гвозди", nameOfItemWithInc: "гвоздей", imageOfItem: UIImage(named: "гвоздь")!, arrayForRaschet: rowOfRaschetForTag4),
    5: DataClass(nameOfItem: "Блоки", nameOfItemWithInc: "блоков", imageOfItem: UIImage(named: "шурупчик")!, arrayForRaschet: rowOfRaschetForTag0),
    ]

let rowOfRaschetForTag0 = [
    0: raschetClass(title: "Тип кирпича", kindOfRow: 1),
    1: raschetClass(title: "Ширина дома, м", kindOfRow: 0),
    2: raschetClass(title: "Длина дома, м", kindOfRow: 0),
    3: raschetClass(title: "Высота дома, м", kindOfRow: 0),
    4: raschetClass(title: "Количество дверей", kindOfRow: 0),
    5: raschetClass(title: "Ширина двери, м", kindOfRow: 0),
    6: raschetClass(title: "Высота двери, м", kindOfRow: 0),
    7: raschetClass(title: "Количетсво окон", kindOfRow: 0),
    8: raschetClass(title: "Ширина окна, м", kindOfRow: 0),
    9: raschetClass(title: "Высота окна, м", kindOfRow: 0)
]

let rowOfRaschetForTag1 = [
    0: raschetClass(title: "Рассчет клея", kindOfRow: 1)
]

let rowOfRaschetForTag2 = [
    0: raschetClass(title: "Тип доски", kindOfRow: 1),
    1: raschetClass(title: "Тип поверхности", kindOfRow: 1),
    2: raschetClass(title: "Ширина поверхности, м", kindOfRow: 0),
    3: raschetClass(title: "Длина поверхности, м", kindOfRow: 0),
    4: raschetClass(title: "Длина доски, м", kindOfRow: 0)
]

let rowOfRaschetForTag3 = [
    0: raschetClass(title: "Тип плитки", kindOfRow: 1),
    1: raschetClass(title: "Тип поверхности", kindOfRow: 1),
    2: raschetClass(title: "Ширина поверхности, м", kindOfRow: 0),
    3: raschetClass(title: "Длина поверхности, м", kindOfRow: 0),
    4: raschetClass(title: "Длина плитки, мм", kindOfRow: 0),
    5: raschetClass(title: "Ширина плитки, мм", kindOfRow: 0)
]

let rowOfRaschetForTag4 = [
    0: raschetClass(title: "Тип гвоздей", kindOfRow: 1),
    1: raschetClass(title: "Тип поверхности", kindOfRow: 1),
    2: raschetClass(title: "Ширина поверхности, м", kindOfRow: 0),
    3: raschetClass(title: "Длина поверхности, м", kindOfRow: 0),
    4: raschetClass(title: "Частота вбива, гв/м", kindOfRow: 0),
]



class DataClass {
    

    var nameOfItem: String
    var nameOfItemWithInc: String
    var imageOfItem: UIImage
    var arrayForRaschet: Dictionary<Int, Any>
    
    init(nameOfItem: String, nameOfItemWithInc: String, imageOfItem: UIImage, arrayForRaschet: Dictionary<Int, Any>) {
        self.nameOfItem = nameOfItem
        self.nameOfItemWithInc = nameOfItemWithInc
        self.imageOfItem = imageOfItem
        self.arrayForRaschet = arrayForRaschet
    }
    
    
}

class raschetClass {
    var title: String
    var kindOfRow: Int //0 - value, 1 - data
    var value: Double?
    var data: String?
    init(title: String, kindOfRow: Int) {
        self.title = title
        self.kindOfRow = kindOfRow
    }
}

