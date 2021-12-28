//
//  HealthyFile.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/11/8.
//

import Foundation



struct foodlist: Identifiable,Codable{
    var id = UUID()
    var listView:String
}

let foodlists:[foodlist] = [
    foodlist(listView: "澱粉：多少克"),
    foodlist(listView: "蛋白質：多少克"),
    foodlist(listView: "蔬菜：多少份量"),
    foodlist(listView: "堅果類：多少克"),
    foodlist(listView: "油：多少")
]



