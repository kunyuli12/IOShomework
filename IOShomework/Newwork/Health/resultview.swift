//
//  resultview.swift
//  VGBox
//
//  Created by 暨大附中03 on 2022/2/3.
//

import SwiftUI

struct resultview: View {
    @State var VGnumber:Float = 0.0
    @State var Friutnumber:Float = 0.0
    @State var anseres:Int = 0
    @State var prisetoltol:Int = 0
    @State var issure:Bool = false
    @EnvironmentObject var AgeViews:VGinform
    @EnvironmentObject var MyData:ShopMenu
    
    var body: some View {
        ZStack {
            VStack {
                Text("建議購買數量")
                    .font(.largeTitle)
                VStack {
                    Text("蔬菜需要\(String(format: "%.0f",VGnumber))份")
                        .font(.title)
                        .padding(4)
                    Text("水果需要\(String(format: "%.0f",Friutnumber))份")
                        .font(.title)
                        .padding(4)
                    Rectangle()
                        .frame(maxWidth:.infinity)
                        .frame(height: 1)
                    ScrollView(showsIndicators:false) {
                    ForEach(AgeViews.showOrder){ od in
                        HStack {
                            Image("\(od.menu.ItemView)")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .cornerRadius(10)
                                .padding(.leading,20)
                            VStack {
                                Text("\(od.menu.name)")
                                    .font(.title)
                                Text("(\(od.menu.infrom.foodweight)/一份|\(od.menu.prise)元)")
                            }
                            Spacer()
                            HStack {
                                Text("\(od.numbers)")
                                    .font(.title2)
                                    .frame(width: 56, height: 40)
                                    .cornerRadius(5)
                                    .background(Color("healthybuttom3"))
                                Image(systemName: "minus.square.fill")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.gray)
                                    .cornerRadius(5)
                                    .onTapGesture {
                                        AgeViews.lowerOrder(value: od.menu)
                                        anseres = AgeViews.sumPrise(temp_orders: AgeViews.showOrder)
                                        
                                    }
                                Image(systemName: "plus.square.fill")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.gray)
                                    .cornerRadius(5)
                                    .onTapGesture {
                                        AgeViews.addOrder(value: od.menu,quanty: 1)
                                        anseres = AgeViews.sumPrise(temp_orders: AgeViews.showOrder)
                                    }
                            }.padding(.leading,15)
                            Spacer()
                            
                        }
                    }
                    }
                    Spacer()
                    Rectangle()
                        .frame(maxWidth:.infinity)
                        .frame(height: 1)
                    Text("目前水果\(String(format: "%.0f",Friutnumber))份，蔬菜\(String(format: "%.0f",VGnumber))份")
                        .font(.title)
                   
                    Spacer()
                    
                }.frame(width: 380, height: 540)
                    .background(Color("確定Color"))
                .cornerRadius(20)
                Text("總金額：\(anseres)")
                    .font(.title2)
                    .onTapGesture {
                        anseres = AgeViews.sumPrise(temp_orders: AgeViews.showOrder)
                    }
                HStack {
                    NavigationLink{
                        BoxView()
                    } label: {
                        Text("去購買")
                            .font(.title2)
                            .frame(width: 100, height: 50)
                            .background(Color(.gray))
                            .cornerRadius(5)
                            .padding(.horizontal,10)
                            .foregroundColor(.white)
                    }
                    Text("確定購買")
                        .font(.title2)
                        .frame(width: 100, height: 50)
                        .background(Color(.gray))
                        .cornerRadius(5)
                        .padding(.horizontal,10)
                        .foregroundColor(.white)
                        .onTapGesture {
                            issure.toggle()
                        }
                    
                }
                Spacer()
            }.blur(radius: issure ? 9 : 0)
            
            CheckView().offset(x:issure ? 0 : 2000)
        }
    }
    @ViewBuilder func CheckView() -> some View{
        VStack{
            Spacer()
            Text("確定結帳？")
                .font(.system(size: 35, weight: .heavy, design: .rounded))
                .foregroundColor(.white)
            Spacer()
            HStack {
                Text("取消")
                    .font(.system(size: 35, weight: .heavy, design: .rounded))
                    .frame(width: 90, height: 50)
                    .background(Color(.red))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .onTapGesture {
                        issure.toggle()
                    }
                Text("確定")
                    .font(.system(size: 35, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
                    .frame(width: 90, height: 50)
                    .background(Color(.red))
                    .cornerRadius(10)
                    .onTapGesture {
                        issure.toggle()
                        MyData.Orders.append(order(onOrder: AgeViews.showOrder))
                        AgeViews.showOrder.removeAll()
                        anseres = 0
                    }
               
            }
            Spacer()
        }.frame(width: 340, height: 200)
            .background(Color(.gray))
            .cornerRadius(20)
    }
}

struct resultview_Previews: PreviewProvider {
    static var previews: some View {
        resultview().environmentObject(VGinform())
    }
}
