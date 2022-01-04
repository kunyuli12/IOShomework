//
//  MeatList.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/12/3.
//

import SwiftUI

struct MeatList: View {
    
    @State var textview = " "
    @EnvironmentObject var MyData:ShopMenu
    
    var body: some View {
        VStack{
            HStack {
                TextField("搜尋",text: $textview)
                    .frame(maxWidth:.infinity )
                    .frame( height: 50, alignment: .center)
                    .background(Color("Colorone"))
                    .cornerRadius(20)
                    .padding(.leading,8)
                    .padding(.trailing,8)
                Button{
                    
                } label: {
                    Image(systemName: "paperplane.fill")
                        .resizable()
                        .frame(width: 35, height: 35, alignment: .center)
                        .padding(9)
                        .background(Color(.green))
                        .cornerRadius(15)
                        .padding(.trailing,5)
                }
            }
            ScrollView(showsIndicators:false) {
                ForEach(MyData.Shoppings){ mu in //mu 是每次回圈時所帶的值
                    NavigationLink{
                        VStack {
                            ProductView(image: mu.ItemView, Itemname: mu.name, money: mu.prise, weight: mu.infrom.foodweight, place: mu.infrom.foodplace, times: mu.infrom.foodtime)
                            
                            buybuttom()
                                .padding(.top,15)
                            Text("購買")
                            .font(.title2)
                            .frame(width: 100, height: 50)
                            .cornerRadius(10)
                            .background(Color(.gray))
                            .onTapGesture {
                                MyData.addOrder(value: mu )
                                
                            }
                        }
                    } label:{
                        HStack{
                            Image("\(mu.ItemView)")
                                .resizable()
                                .frame(width: 110, height: 110)
                                .cornerRadius(20)
                            VStack{
                                Text("\(mu.name)")
                                    .font(.title)
                                    .padding(.vertical,10)
                                    .foregroundColor(.black)
                                Text("＄\(mu.prise)元(NT)")
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

struct MeatList_Previews: PreviewProvider {
    static var previews: some View {
        MeatList().environmentObject(ShopMenu())
    }
}


