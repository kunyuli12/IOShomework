//
//  VegetableFile.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/11/4.
//

import Foundation


struct vegetable: Identifiable,Codable{
    var id = UUID()
    var vegetableView:String
    var prise:String
    var name:String
    var date:Date
    var IDs:Int
}

let vegetables:[vegetable] = [
    vegetable(vegetableView: "A", prise: "70", name: "高麗菜1", date: Date(), IDs: 0),
    vegetable(vegetableView: "A", prise: "70", name: "高麗菜2", date: Date(), IDs: 1),
    vegetable(vegetableView: "A", prise: "70", name: "高麗菜3", date: Date(), IDs: 2),
    vegetable(vegetableView: "A", prise: "70", name: "高麗菜4", date: Date(), IDs: 3),
    vegetable(vegetableView: "A", prise: "70", name: "高麗菜5", date: Date(), IDs: 4),
    vegetable(vegetableView: "A", prise: "70", name: "高麗菜6", date: Date(), IDs: 5),
    vegetable(vegetableView: "A", prise: "70", name: "高麗菜7", date: Date(), IDs: 6)
]

