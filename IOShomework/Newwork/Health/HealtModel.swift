//
//  HealtModel.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2022/1/4.
//

import Foundation


struct AgeModel_B:Identifiable,Hashable,Codable {
    var id = UUID().uuidString
    var AGEname:String
    var AGEnumber:Float
    var NeedVG:Float
    var NeedFurit:Float
}
struct AgeModel_G:Identifiable,Hashable,Codable {
    var id = UUID().uuidString
    var AGEname:String
    var AGEnumber:Float
    var NeedVG:Float
    var NeedFurit:Float
}
class VGinform:ObservableObject {
    @Published var AGEbox_B:[AgeModel_B] = [AgeModel_B]()
    @Published var AGEbox_G:[AgeModel_G] = [AgeModel_G]()
    @Published var Shoppingsall:[menu] = [menu]()
    @Published var showOrder = [Oder]()
    @Published var Orders = [order]()
    @Published var onoffs:Bool =  false
    
    init(){
        SexboxB()
        SexboxG()
        shoping()
    }
    
    func shoping()  {
        Shoppingsall = [
            menu(ItemView: "images-2", prise:30, name: "白花芥藍", infrom: foodinfrom(foodweight: "?", supply: "賴寬宏", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-3", prise:50, name: "白花椰", infrom: foodinfrom(foodweight: "?", supply: "賴寬宏", foodtime: "冷藏5~7天"), swNumber: 0, like: false),//斤
            menu(ItemView: "images-4", prise:40, name: "牛奶白菜", infrom: foodinfrom(foodweight: "?", supply: "賴寬宏", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-9", prise:25, name: "甜羅美", infrom: foodinfrom(foodweight: "?", supply: "黃詩瑜", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-10", prise:30, name: "大陸妹", infrom: foodinfrom(foodweight: "?", supply: "黃詩瑜", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-11", prise:25, name: "咸豐菜", infrom: foodinfrom(foodweight: "?", supply: "謝唯琪", foodtime: "冷藏5~7天"), swNumber: 0, like: false),//斤
            menu(ItemView: "images-12", prise:25, name: "人參菜", infrom: foodinfrom(foodweight: "?", supply: "謝唯琪", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-13", prise:55, name: "山葵葉", infrom: foodinfrom(foodweight: "?", supply: "陳守安", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-14", prise:35, name: "豆瓣菜", infrom: foodinfrom(foodweight: "?", supply: "黃金山", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-15", prise:35, name: ":黑葉白菜", infrom: foodinfrom(foodweight: "?", supply: "黃金山", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-16", prise:35, name: "龍葵", infrom: foodinfrom(foodweight: "?", supply: "黃金山", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-17", prise:35, name: "黃花芥藍", infrom: foodinfrom(foodweight: "?", supply: "陳世閔", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-18", prise:30, name: "地瓜葉", infrom: foodinfrom(foodweight: "?", supply: "陳世閔", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-16", prise:30, name: "龍葵", infrom: foodinfrom(foodweight: "?", supply: "陳世閔", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "香菜-1100x1100", prise:30, name: "香菜", infrom: foodinfrom(foodweight: "?", supply: "陳世閔", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-19", prise:30, name: "韭菜", infrom: foodinfrom(foodweight: "?", supply: "陳世閔", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-10", prise:30, name: "福山萵苣", infrom: foodinfrom(foodweight: "?", supply: "陳世閔", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-20", prise:35, name: "羽衣甘藍", infrom: foodinfrom(foodweight: "?", supply: "陳世閔", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "Cabbage", prise:50, name: "高麗菜", infrom: foodinfrom(foodweight: "?", supply: "陳世閔", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "Gracilaria", prise:30, name: "龍鬚菜", infrom: foodinfrom(foodweight: "?", supply: "白炳輝", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "spinach", prise:40, name: "菠菜", infrom: foodinfrom(foodweight: "?", supply: "黃詩瑜", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "cabbage＿sprouts", prise:35, name: "高麗菜芽", infrom: foodinfrom(foodweight: "?", supply: "黃詩瑜", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "Cabbage", prise:50, name: "高麗菜", infrom: foodinfrom(foodweight: "?", supply: "黃詩瑜", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-21", prise:35, name: "木瓜", infrom: foodinfrom(foodweight: "?", supply: "黃詩瑜", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-22", prise:55, name: "臍橙", infrom: foodinfrom(foodweight: "?", supply: "李建南", foodtime: "冷藏5~7天"), swNumber: 0, like: false),//斤
            menu(ItemView: "images-23", prise:140, name: "小蕃茄", infrom: foodinfrom(foodweight: "?", supply: "周芳民", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-24", prise:20, name: "無籽檸檬", infrom: foodinfrom(foodweight: "?", supply: "李建南", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-25", prise:30, name: "柳丁", infrom: foodinfrom(foodweight: "?", supply: "李建南", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-26", prise:30, name: "香蕉", infrom: foodinfrom(foodweight: "?", supply: "張豐巖", foodtime: "冷藏5~7天"), swNumber: 0, like: false),//斤
            menu(ItemView: "images-27", prise:50, name: "金棗", infrom: foodinfrom(foodweight: "?", supply: "李建南", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images", prise:88, name: "牛奶玉米", infrom: foodinfrom(foodweight: "40", supply: "賴寬宏", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-5", prise:50, name: "香菇", infrom: foodinfrom(foodweight: "?", supply: "葉光輝", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-6", prise:25, name: "杏鮑菇", infrom: foodinfrom(foodweight: "?", supply: "方永芳", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "cucumber", prise:45, name: "小黃瓜", infrom: foodinfrom(foodweight: "?", supply: "黃仁違", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-7", prise:30, name:"木耳", infrom: foodinfrom(foodweight: "?", supply: "豐年農場", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-7", prise:30, name: "木耳", infrom: foodinfrom(foodweight: "?", supply: "游景", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-8", prise:109, name: "銀耳", infrom: foodinfrom(foodweight: "?", supply: "莊凱奇", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "Hongxi＿Mushroom", prise:30, name: "鴻禧菇 ", infrom: foodinfrom(foodweight: "?", supply: "莊凱奇", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-28", prise:30, name: "白美人菇", infrom: foodinfrom(foodweight: "?", supply: "莊凱奇", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-29", prise:30, name: "黑美人菇", infrom: foodinfrom(foodweight: "?", supply: "莊凱奇", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-30", prise:85, name: "巴西蘑菇", infrom: foodinfrom(foodweight: "?", supply: "蕭貴昇", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-31", prise:30, name: "彩椒", infrom: foodinfrom(foodweight: "?", supply: "何嘉軒", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-32", prise:80, name: "茭白筍", infrom: foodinfrom(foodweight: "?", supply: "羅逸豐", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "onion", prise:20, name: "刺蔥", infrom: foodinfrom(foodweight: "?", supply: "張譽庭", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-33", prise:45, name: "白蘿蔔", infrom: foodinfrom(foodweight: "?", supply: "余水永", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-34", prise:60, name: "玉米筍", infrom: foodinfrom(foodweight: "?", supply: "陳世閔", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-35", prise:30, name: "糯米椒", infrom: foodinfrom(foodweight: "?", supply: "陳世閔", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-36", prise:35, name: "青蔥", infrom: foodinfrom(foodweight: "?", supply: "陳世閔", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-37", prise:100, name: "竹薑", infrom: foodinfrom(foodweight: "?", supply: "張豐巖", foodtime: "冷藏5~7天"), swNumber: 0, like: false),//斤
            menu(ItemView: "images-38", prise:150, name: "乾燥竹薑", infrom: foodinfrom(foodweight: "?", supply: "張豐巖", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-39", prise:25, name: "牛蕃茄", infrom: foodinfrom(foodweight: "?", supply: "王韋智", foodtime: "冷藏5~7天"), swNumber: 0, like: false),//斤
            menu(ItemView: "images-40", prise:60, name: "青花筍", infrom: foodinfrom(foodweight: "?", supply: "黃詩瑜", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
            menu(ItemView: "images-41", prise:40, name: "甜菜", infrom: foodinfrom(foodweight: "?", supply: "黃詩瑜", foodtime: "冷藏5~7天"), swNumber: 0, like: false),
        ]
        
    }
    func SexboxB() {
        AGEbox_B = [
            AgeModel_B(AGEname: "2~6", AGEnumber: 0,NeedVG: 3,NeedFurit: 2),
            AgeModel_B(AGEname: "7~12", AGEnumber: 0,NeedVG: 4,NeedFurit: 3),
            AgeModel_B(AGEname: "13~18", AGEnumber: 0,NeedVG: 5,NeedFurit: 4),
            AgeModel_B(AGEname: "19~30", AGEnumber: 0,NeedVG: 5,NeedFurit: 4),
            AgeModel_B(AGEname: "31~50", AGEnumber: 0,NeedVG: 5,NeedFurit: 4),
            AgeModel_B(AGEname: "51~70", AGEnumber: 0,NeedVG: 4,NeedFurit: 3.5),
            AgeModel_B(AGEname: "71以上", AGEnumber: 0,NeedVG: 3,NeedFurit: 2)
        ]
    }
    func SexboxG() {
        AGEbox_G = [
            AgeModel_G(AGEname: "2~6", AGEnumber: 0,NeedVG: 3,NeedFurit: 2),
            AgeModel_G(AGEname: "7~12", AGEnumber: 0,NeedVG: 4,NeedFurit: 3),
            AgeModel_G(AGEname: "13~18", AGEnumber: 0,NeedVG: 4,NeedFurit: 3),
            AgeModel_G(AGEname: "19~30", AGEnumber: 0,NeedVG: 4,NeedFurit: 3),
            AgeModel_G(AGEname: "31~50", AGEnumber: 0,NeedVG: 4,NeedFurit: 3),
            AgeModel_G(AGEname: "51~70", AGEnumber: 0,NeedVG: 3,NeedFurit: 2),
            AgeModel_G(AGEname: "71以上", AGEnumber: 0,NeedVG: 3,NeedFurit: 2)
        ]
    }
    
    func addOrder(value:menu,quanty:Int ){
        let Index = showOrder.firstIndex(where: { od in
            od.menu.name == value.name
        })
        if (Index != nil) {
            showOrder[Index!].numbers += quanty
            
        }else{
            showOrder.append(Oder(menu: value, numbers: quanty))
        }
    }
    func lowerOrder(value:menu ){
        let Index = showOrder.firstIndex(where: { od in
            od.menu.name == value.name
        })
        if (Index != nil) {
            if showOrder[Index!].numbers > 1 {
                showOrder[Index!].numbers -= 1
            }else{
                showOrder.removeAll()
            }
            
        }else{
            showOrder.append(Oder(menu: value, numbers: 1))
        }
    }
    func toltolprise(prises:Int ,number:Int ) -> Int {
        let anser = prises*number
        return anser
    }
    
    func sumPrise(temp_orders:[Oder]) -> Int {
        
        var sum = 0
        
        for od in temp_orders {
            sum += toltolprise(prises: od.menu.prise, number: od.numbers)
        }
        
        return sum
    }
    
    func AddBoy (value:AgeModel_B,quanty:Float ){
        let Index = AGEbox_B.firstIndex(where: { ad in
            ad.AGEname == value.AGEname
        })
        if (Index != nil) {
            AGEbox_B[Index!].AGEnumber += quanty
        }
    }
    func LowBoy (value:AgeModel_B,quanty:Float ){
        let Index = AGEbox_B.firstIndex(where: { ad in
            ad.AGEname == value.AGEname
        })
        if (Index != nil) {
            if  AGEbox_B[Index!].AGEnumber > 0 {
            AGEbox_B[Index!].AGEnumber -= quanty
            }
        }
    }
    func AddGirl (value:AgeModel_G,quanty:Float ){
        let Index = AGEbox_G.firstIndex(where: { ad in
            ad.AGEname == value.AGEname
        })
        if (Index != nil) {
            AGEbox_G[Index!].AGEnumber += quanty
        }
    }
    func LowGirl (value:AgeModel_G,quanty:Float ){
        let Index = AGEbox_G.firstIndex(where: { ad in
            ad.AGEname == value.AGEname
        })
        if (Index != nil) {
            if  AGEbox_G[Index!].AGEnumber > 0 {
            AGEbox_G[Index!].AGEnumber -= quanty
            }
        }
    }

    func FinallyQuanty(quanty:Float ,need:Float ) -> Float {
        let anser = quanty * need
        return anser
    }
    
    func VGDemandB(tempBoy:[AgeModel_B]) -> Float {
        
        var sum:Float = 0.0
        
        for de in tempBoy {
                sum += FinallyQuanty(quanty: de.AGEnumber, need: de.NeedVG)
            
        }
        return sum
    }//計算總共需要的蔬菜量
    func VGDemandG(tempGirl:[AgeModel_G]) -> Float {
        
        var sum:Float = 0.0
        
        for des in tempGirl {
                sum += FinallyQuanty(quanty: des.AGEnumber, need: des.NeedVG)
            
        }
        return sum
    }//計算總共需要的蔬菜量
  func FriutDemandB(tempBoy:[AgeModel_B]) -> Float {
      
      var sum:Float = 0.0
      
      for de in tempBoy {
              sum += FinallyQuanty(quanty: de.AGEnumber, need: de.NeedFurit)
      }
      return sum
  }//計算總共需要的水果量
    func FriutDemandG(tempGirl:[AgeModel_G]) -> Float {
        
        var sum:Float = 0.0
        
            for des in tempGirl{
                sum += FinallyQuanty(quanty: des.AGEnumber, need: des.NeedFurit)
            }
        return sum
    }//計算總共需要的水果量
}
