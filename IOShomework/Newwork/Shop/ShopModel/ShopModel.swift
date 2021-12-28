//
//  ShopModel.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/12/3.
//

import Foundation
import SwiftUI
import Combine

struct menu: Identifiable,Hashable,Codable{
    var id = UUID().uuidString
    var ItemView:String
    var prise:String
    var name:String
}

struct Oder: Identifiable,Hashable,Codable{
    var id = UUID().uuidString
    var menu:menu
    var numbers:Int
    var infrom:foodinfrom
}

struct foodinfrom: Identifiable,Hashable,Codable{
    var id = UUID().uuidString
    var foodweight:String
    var foodplace:String
    var foodtime:String
}

struct order: Identifiable,Hashable,Codable{
    var id = UUID().uuidString
    var order:Oder
    var qauntity:Int

}

               //傳值
class ShopMenu:ObservableObject {
    
    @Published var en_number = 0
    @Published var Shoppings:[Oder] = [Oder]() //要回傳的，所以要先去宣告一個職
    @Published var showOrder = [order]()
    
    init(){
        shoping()
    }
    func shoping()  {
         Shoppings = [
            Oder(menu: menu(ItemView: "Broccoli", prise: "80", name: "花椰菜"), numbers: 9,infrom:foodinfrom(foodweight: "2台斤", foodplace: "台南", foodtime: "冷藏５～７天")),
            Oder(menu: menu(ItemView: "Cabbage", prise: "70", name: "高麗菜"), numbers: 9,infrom:foodinfrom(foodweight: "3台斤", foodplace: "台東", foodtime: "冷藏2～4天")),
            Oder(menu: menu(ItemView: "AlfalfaSprouts", prise: "45", name: "苜蓿芽"), numbers: 9,infrom:foodinfrom(foodweight: "1.5台斤", foodplace: "台南", foodtime: "冷藏3～6天")),
            Oder(menu: menu(ItemView: "Tofu", prise: "30", name: "豆腐"), numbers: 9,infrom:foodinfrom(foodweight: "2台斤", foodplace: "台東", foodtime: "冷藏6～9天")),
            Oder(menu: menu(ItemView: "cucumber", prise: "55", name: "小黃瓜"), numbers: 9,infrom:foodinfrom(foodweight: "2台斤", foodplace: "台中", foodtime: "冷4～5天"))
        ]
       
    }
    
    func addOrder(value:Oder){
        showOrder.append(order(order: value, qauntity: 1))
    }
    
}


struct Quantity : Identifiable,Codable{
    var id = UUID()
    var menu:String
}
//Codable 為了要和Firebace連結
//class ShopMenu: ObservableObject {

 
 let Shopings:[Oder] = [
    Oder(menu: menu(ItemView: "Broccoli", prise: "80", name: "花椰菜"), numbers: 9,infrom:foodinfrom(foodweight: "", foodplace: "", foodtime: "")),
    Oder(menu: menu(ItemView: "Cabbage", prise: "70", name: "高麗菜"), numbers: 9,infrom:foodinfrom(foodweight: "", foodplace: "", foodtime: "")),
    Oder(menu: menu(ItemView: "AlfalfaSprouts", prise: "45", name: "苜蓿芽"), numbers: 9,infrom:foodinfrom(foodweight: "", foodplace: "", foodtime: "")),
    Oder(menu: menu(ItemView: "Tofu", prise: "30", name: "豆腐"), numbers: 9,infrom:foodinfrom(foodweight: "", foodplace: "", foodtime: "")),
    Oder(menu: menu(ItemView: "cucumber", prise: "55", name: "小黃瓜"), numbers: 9,infrom:foodinfrom(foodweight: "", foodplace: "", foodtime: ""))
 ]


/*
 class ShopMenu:ObservableObject {
     
     @Published var en_number = 0
     @Published var Shoppings:[Oder] = shoping()
     
     
     static func shoping() -> [Oder] {
         let tem = [
             Oder(menu: Menu(ItemView: "Broccoli", prise: "80", name: "花椰菜"), numbers: 9,infrom:foodinfrom(foodweight: "", foodplace: "", foodtime: "")),
             Oder(menu: Menu(ItemView: "Cabbage", prise: "70", name: "高麗菜"), numbers: 9,infrom:foodinfrom(foodweight: "", foodplace: "", foodtime: "")),
             Oder(menu: Menu(ItemView: "AlfalfaSprouts", prise: "45", name: "苜蓿芽"), numbers: 9,infrom:foodinfrom(foodweight: "", foodplace: "", foodtime: "")),
             Oder(menu: Menu(ItemView: "Tofu", prise: "30", name: "豆腐"), numbers: 9,infrom:foodinfrom(foodweight: "", foodplace: "", foodtime: "")),
             Oder(menu: Menu(ItemView: "cucumber", prise: "55", name: "小黃瓜"), numbers: 9,infrom:foodinfrom(foodweight: "", foodplace: "", foodtime: ""))
         ]
        return tem //回傳
     }
 }
 */
