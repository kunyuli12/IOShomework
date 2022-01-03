//
//  TestMune.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/12/27.
//

import SwiftUI

struct TestMune: View {
    
    @EnvironmentObject var MyData:ShopMenu
    
    var body: some View {
        VStack {
            ScrollView(showsIndicators:false) {
                ForEach(MyData.Shoppings){ ms in //mu 是每次回圈時所帶的值
                    NavigationLink{
                        VStack {
                            ProductView(image: ms.ItemView, Itemname: ms.name, money: ms.prise, weight: ms.infrom.foodweight, place: ms.infrom.foodplace, times:ms.infrom.foodtime )
                            
                            buybuttom()
                                .padding(.top,15)
                            Text("購買")
                            .font(.title2)
                            .frame(width: 100, height: 50)
                            .cornerRadius(10)
                            .background(Color(.gray))
                            .onTapGesture {
                                MyData.addOrder(value: ms)
                            }
                        }
                    } label:{
                        HStack{
                            Image("\(ms.ItemView)")
                                .resizable()
                                .frame(width: 110, height: 110)
                                .cornerRadius(20)
                            VStack{
                                Text("\(ms.name)")
                                    .font(.title)
                                    .padding(.vertical,10)
                                    .foregroundColor(.black)
                                Text("＄\(ms.prise)元(NT)")
                                    .font(.title)
                                    .padding(.bottom,10)
                                    .foregroundColor(.black)
                            }.padding(.vertical,10)
                            Spacer()
                        }.frame(maxWidth:.infinity)
                            .padding(.leading,15)
                    }
                    }
                    Spacer()
            }
        }
    }
}

struct TestMune_Previews: PreviewProvider {
    static var previews: some View {
        TestMune().environmentObject(ShopMenu())
    }
}
