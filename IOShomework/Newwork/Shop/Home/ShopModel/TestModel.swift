//
//  TestModel.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2022/1/10.
//

import Foundation
import SwiftUI
import Combine


class turnnews:ObservableObject {
    @Published var onoffs:Bool =  false
    
}

struct news: Identifiable,Hashable,Codable{
    var id = UUID().uuidString
    var ItemView:String
    var prise:Int
    var name:String
    var infrom:testnew
    var swNumber:Int
    var like:Bool
}
struct testnew: Identifiable,Hashable,Codable{
    var id = UUID().uuidString
    var foodweight:String
    var supply:String
    var foodtime:String
}
let mennu = [
news(ItemView: "Broccoli", prise:88, name: "牛奶玉米", infrom: testnew(foodweight: "40", supply: "賴寬宏", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
news(ItemView: "Broccoli", prise:30, name: "白花芥藍", infrom: testnew(foodweight: "?", supply: "賴寬宏", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
news(ItemView: "Broccoli", prise:53, name: "白花椰 ", infrom: testnew(foodweight: "?", supply: "賴寬宏", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
news(ItemView: "Broccoli", prise:40, name: "牛奶白菜", infrom: testnew(foodweight: "?", supply: "賴寬宏", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
news(ItemView: "Broccoli", prise:50, name: "香菇", infrom: testnew(foodweight: "?", supply: "葉光輝", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
news(ItemView: "Broccoli", prise:25, name: "杏鮑菇", infrom: testnew(foodweight: "?", supply: "方永芳", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
news(ItemView: "Broccoli", prise:45, name: "小黃瓜", infrom: testnew(foodweight: "?", supply: "黃仁違", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
news(ItemView: "Broccoli", prise:30, name:"木耳", infrom: testnew(foodweight: "?", supply: "豐年農場", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
news(ItemView: "Broccoli", prise:30, name: "木耳", infrom: testnew(foodweight: "?", supply: "游景", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
news(ItemView: "Broccoli", prise:109, name: "銀耳", infrom: testnew(foodweight: "?", supply: "莊凱奇", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
news(ItemView: "Broccoli", prise:30, name: "鴻禧菇 ", infrom: testnew(foodweight: "?", supply: "莊凱奇", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
news(ItemView: "Broccoli", prise:30, name: "白美人菇", infrom: testnew(foodweight: "?", supply: "莊凱奇", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
news(ItemView: "Broccoli", prise:30, name: "黑美人菇", infrom: testnew(foodweight: "?", supply: "莊凱奇", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
news(ItemView: "Broccoli", prise:85, name: "巴西蘑菇", infrom: testnew(foodweight: "?", supply: "蕭貴昇", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
news(ItemView: "Broccoli", prise:30, name: "彩椒", infrom: testnew(foodweight: "?", supply: "何嘉軒", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
news(ItemView: "Broccoli", prise:20, name: "無籽檸檬", infrom: testnew(foodweight: "?", supply: "李建南", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
news(ItemView: "Broccoli", prise:30, name: "田劍菜", infrom: testnew(foodweight: "?", supply: "黃詩瑜", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
news(ItemView: "Broccoli", prise:25, name: "甜羅美", infrom: testnew(foodweight: "?", supply: "黃詩瑜", foodtime: "冷藏5~7天"), swNumber: 0, like: false),


]


/*
 名稱:大陸妹      價錢:30      生產者:黃詩瑜
 名稱:咸豐菜      價錢:25      生產者:謝唯琪
 名稱:人參菜      價錢:25      生產者:謝唯琪
 名稱:茭白筍      價錢:80      生產者:羅逸豐
 名稱:川七          價錢:25      生產者:張譽
 名稱:刺蔥          價錢20       生產者:張譽庭
 名稱:山葵葉      價錢:55      生產者:陳守安
 名稱:白蘿蔔      價錢:45      生產者:余水永
 名稱:豆瓣菜      價錢:35      生產者:黃金山
 名稱:黑葉白菜  價錢35       生產者:黃金山
 名稱:龍葵          價錢:35      生產者:黃金山
 名稱:鹹鴨蛋      價錢:50      生產者:何世鴻
 名稱:牛奶白菜  價錢:30      生產者:陳世閔
 名稱:黃花芥藍  價錢:35      生產者:陳世閔
 名稱:蕎麥葉      價錢:25      生產者:陳世閔
 名稱:地瓜葉      價錢:30      生產者:陳世閔
 名稱:龍葵          價錢:30      生產者:陳世閔
 名稱:玉米鬚      價錢:25      生產者:陳世閔
 名稱:玉米筍      價錢:60      生產者:陳世閔
 名稱:糯米椒      價錢:30      生產者:陳世閔
 名稱:青蔥          價錢:35      生產者:陳世閔
 名稱:香菜          價錢:30      生產者:陳世閔
 名稱:韭菜          價錢:30      生產者:陳世閔
 名稱:福山萵苣  價錢:30      生產者:陳世閔
 名稱:羽衣甘藍  價錢35       生產者:陳世閔
 名稱:高麗菜      價錢:50      生產者:陳世閔
 名稱:竹薑          價錢100/斤 生產者:張豐巖
 名稱:乾燥竹薑  價錢:150    生產者:張豐巖
 名稱:牛蕃茄      價錢:25/斤 生產者:王韋智
 名稱:金棗          價錢:50      生產者:李建南
 名稱:臍橙          價錢:55/斤 生產者:李建南
 名稱:小蕃茄      價錢:140    生產者:周芳民
 名稱:青花筍      價錢:60      生產者:黃詩瑜
 名稱:龍鬚菜      價錢:30      生產者:白炳輝
 名稱:菠菜          價錢:40      生產者:黃詩瑜
 名稱:高麗菜芽  價錢:35      生產者:黃詩瑜
 名稱:高麗菜      價錢:50      生產者:黃詩瑜
 名稱:甜菜          價錢:40      生產者:黃詩瑜
 名稱:撥葉生菜  價錢:30      生產者:黃詩瑜
 名稱:木瓜          價錢:35      生產者:黃詩瑜*/
