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

struct menus: Identifiable,Hashable,Codable{
    var id = UUID().uuidString
    var ItemView:String
    var prise:Int
    var name:String
    var infrom:foodinfroms
    var swNumber:Int
    var like:Bool
}
struct foodinfroms: Identifiable,Hashable,Codable{
    var id = UUID().uuidString
    var foodweight:String
    var supply:String
    var foodtime:String
}

/*其他
 名稱:牛奶玉米  價錢:88      生產者:賴寬宏
 名稱:香菇          價錢:50      生產者:葉光輝
 名稱:杏鮑菇      價錢:25      生產者:方永芳
 名稱:小黃瓜      價錢:45      生產者:黃仁違
 名稱:木耳          價錢:30      生產者:豐年農場
 名稱:木耳          價錢:30      生產者:游景
 名稱:銀耳          價錢:109    生產者:莊凱奇 /////
 名稱:鴻禧菇      價錢:30      生產者:莊凱奇
 名稱:白美人菇  價錢:30      生產者:莊凱奇
 名稱:黑美人菇  價錢:30      生產者:莊凱奇
 名稱:巴西蘑菇  價錢:85      生產者:蕭貴昇
 名稱:彩椒          價錢:30      生產者:何嘉軒
 名稱:茭白筍      價錢:80      生產者:羅逸豐
 名稱:刺蔥          價錢20       生產者:張譽庭
 名稱:白蘿蔔      價錢:45      生產者:余水永
 名稱:玉米筍      價錢:60      生產者:陳世閔
 名稱:糯米椒      價錢:30      生產者:陳世閔
 名稱:青蔥          價錢:35      生產者:陳世閔
 名稱:竹薑          價錢100/斤 生產者:張豐巖
 名稱:乾燥竹薑  價錢:150    生產者:張豐巖
 名稱:牛蕃茄      價錢:25/斤 生產者:王韋智
 名稱:青花筍      價錢:60      生產者:黃詩瑜
 名稱:甜菜          價錢:40      生產者:黃詩瑜
 */
/* 葉菜類
 名稱:白花芥藍  價錢:30      生產者:賴寬宏
 名稱:白花椰      價錢:53      生產者:賴寬宏
 名稱:牛奶白菜  價錢:40      生產者:賴寬宏
 名稱:甜羅美      價錢:25      生產者:黃詩瑜
 名稱:大陸妹      價錢:30      生產者:黃詩瑜
 名稱:咸豐菜      價錢:25      生產者:謝唯琪
 名稱:人參菜      價錢:25      生產者:謝唯琪
 名稱:山葵葉      價錢:55      生產者:陳守安
 名稱:豆瓣菜      價錢:35      生產者:黃金山
 名稱:黑葉白菜  價錢35       生產者:黃金山
 名稱:龍葵          價錢:35      生產者:黃金山
 名稱:黃花芥藍  價錢:35      生產者:陳世閔
 名稱:地瓜葉      價錢:30      生產者:陳世閔
 名稱:龍葵          價錢:30      生產者:陳世閔
 名稱:香菜          價錢:30      生產者:陳世閔
 名稱:韭菜          價錢:30      生產者:陳世閔
 名稱:福山萵苣  價錢:30      生產者:陳世閔
 名稱:羽衣甘藍  價錢35       生產者:陳世閔
 名稱:高麗菜      價錢:50      生產者:陳世閔
 名稱:龍鬚菜      價錢:30      生產者:白炳輝
 名稱:菠菜          價錢:40      生產者:黃詩瑜
 名稱:高麗菜芽  價錢:35      生產者:黃詩瑜
 名稱:高麗菜      價錢:50      生產者:黃詩瑜
 */
/*水果
 名稱:木瓜          價錢:35      生產者:黃詩瑜
 名稱:臍橙          價錢:55/斤 生產者:李建南
 名稱:小蕃茄      價錢:140    生產者:周芳民
 名稱:無籽檸檬  價錢:20      生產者:李建南
 名稱:柳丁  價錢:30      生產者:李建南
 名稱:香蕉  價錢:30/斤      生產者:張豐巖
 名稱:金棗          價錢:50      生產者:李建南
 */
