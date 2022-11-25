//
//  HomeView.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/12/3.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var IntegrateDate = Integrate()
    @ObservedObject var MyDates = ShopMenu()
    @EnvironmentObject var MyData:ShopMenu
    @State var anser:Int = 0
    
    var body: some View {
        NavigationView{
            VStack {
                VStack{
                    Circle()
                        .frame(width: 170, height: 170, alignment: .center)
                        .foregroundColor(Color(.lightGray))
                    Text("用戶名稱")
                }
              /*  Button("新增多筆商店資料") {
                    MyDates.addAll(shops:[
                        listmenu(boxname: "葉菜類清單", showmenu: [
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
                        ])
                    ])
                }*/
                HStack{
                    Spacer()
                    NavigationLink{
                        PurchaseHistory()
                    } label:{
                        enterbuttom(entertext:"購買記錄")
                    }
                    Spacer()
                    NavigationLink{
                        LikeList()
                    } label:{
                        enterbuttom(entertext:"我的最愛")
                    }
                    Spacer()
                }
                Spacer()
                    .frame(height: 20)
                HStack{
                    Spacer()
                    NavigationLink{
                        Cartview()
                    } label:{
                        enterbuttom(entertext:"購物車")
                    }
                    Spacer()
                    NavigationLink{
                        Account()
                    } label:{
                        enterbuttom(entertext:"帳戶")
                    }
                    Spacer()
                }
                Spacer()
            }.navigationBarTitle(Text(" "),displayMode: .inline)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(ShopMenu())
    }
}

struct enterbuttom: View {
    @State var entertext = " "
    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(width: 180, height: 180, alignment: .center)
                .cornerRadius(20)
                .foregroundColor(Color("HomecolorBU"))
            Text("\(entertext)")
                .foregroundColor(.black)
        }
    }
}





/*  Button("新增多筆資料") {
      IntegrateDate.addAll(shops:[ listmenu(boxname: "葉菜類清單", showmenu: [
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
      ]),listmenu(boxname: "水果類和其他類清單", showmenu: [
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
      ])
                                 ])
 
   }*/
