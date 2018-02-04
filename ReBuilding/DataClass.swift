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
    DataClass(nameOfItem: "Кирпичи", nameOfItemWithInc: "кирпичей", imageOfItem: UIImage(named: "кирпич")!),
    DataClass(nameOfItem: "Клей", nameOfItemWithInc: "клея", imageOfItem: UIImage(named: "клейчик")!),
    DataClass(nameOfItem: "Доски", nameOfItemWithInc: "досок", imageOfItem: UIImage(named: "шурупчик")!),
    DataClass(nameOfItem: "Плитка", nameOfItemWithInc: "плитки", imageOfItem: UIImage(named: "шурупчик")!),
    DataClass(nameOfItem: "Гвозди", nameOfItemWithInc: "гвоздей", imageOfItem: UIImage(named: "гвоздь")!),
    DataClass(nameOfItem: "Блоки", nameOfItemWithInc: "блоков", imageOfItem: UIImage(named: "шурупчик")!),
    ]


protocol prot {

}

class DataClass {
    

    var nameOfItem: String
    var nameOfItemWithInc: String
    var imageOfItem: UIImage
    
    init(nameOfItem: String, nameOfItemWithInc: String, imageOfItem: UIImage) {
        self.nameOfItem = nameOfItem
        self.nameOfItemWithInc = nameOfItemWithInc
        self.imageOfItem = imageOfItem
    }
    
    
}

