//
//  Cartview.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/12/13.
//

import SwiftUI

struct Cartview: View {
    
    @EnvironmentObject var MyData:ShopMenu
    
    var body: some View {
        VStack {
            Text("購物車")
                .font(.title)
            Rectangle()
                .frame(maxWidth:.infinity)
                .frame(height:1.5)
            ScrollView(showsIndicators:false) {
                HStack {
                    Image("Broccoli")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                        .padding(.leading,20)
                    VStack {
                        Text("青花菜")
                            .font(.title)
                        Text("(50g/一份|40元)")
                    }
                    Spacer()
                    HStack {
                        Rectangle()
                            .frame(width: 56, height: 40)
                            .cornerRadius(5)
                            .foregroundColor(Color("healthybuttom3"))
                        Image(systemName: "minus.square.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.gray)
                            .cornerRadius(5)
                        Image(systemName: "plus.square.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.gray)
                            .cornerRadius(5)
                    }
                    Spacer()
                }
                VStack{
                    ForEach(MyData.showOrder){ od in
                        HStack {
                            Image("\(od.order.menu.ItemView)")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .cornerRadius(10)
                                .padding(.leading,20)
                            VStack {
                                Text("\(od.order.menu.name)")
                                    .font(.title)
                                Text("(\(od.order.infrom.foodweight)/一份|\(od.order.menu.prise)元)")
                            }
                            Spacer()
                        }
                    }
                }
            }
            Spacer()
            HStack {
                VStack{
                    Text("小計：")
                        .font(.title2)
                    Text("運費：")
                        .font(.title2)
                    Text("總共：")
                        .font(.title2)
                }.padding(.leading,10)
                Spacer()
                Text("購買")
                    .font(.title)
                    .frame(width: 85, height: 85)
                    .background(Color(.gray))
                    .cornerRadius(5)
                    .padding(.trailing,10)
            }
            Spacer()
                .frame(height: 20)
        }
    }
}

struct Cartview_Previews: PreviewProvider {
    static var previews: some View {
        Cartview().environmentObject(ShopMenu())
    }
}
