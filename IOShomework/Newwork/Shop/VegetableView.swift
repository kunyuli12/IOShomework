//
//  VegetableView.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/12/3.
//

import SwiftUI

struct VegetableView: View {
    //蔬果清單
    @State var textview :String = ""
    @EnvironmentObject var MyData:ShopMenu//Shop的Ｍodel
    @State var onoff = false//按鈕開關
    @State var shownumber = ""//價錢計算
    @State var numbernew:Int = 0
    @State var anser:Int = 0//計算結果
    @State var chock = false//按鈕開關
    @State var chock_again = false//按鈕開關
    @State var MyShopes = listmenu(boxname: "", showmenu: [menu(ItemView: "", prise:0, name: "", infrom: foodinfrom(foodweight: "", supply: "", foodtime: ""), swNumber: 0, like: false),])//資料庫
    
    var body: some View {
        VStack{
            HStack {
                TextField("搜尋...",text: $textview)
                    .padding(8)
                    .textFieldStyle(.roundedBorder)
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
                ForEach(MyShopes.showmenu){ mu in //mu 是每次回圈時所帶的值
                    NavigationLink{
                        VStack {
                            ZStack{
                                VStack {
                                    ProductView(image: mu.ItemView, Itemname: mu.name, money: mu.prise, weight: mu.infrom.foodweight, place: mu.infrom.supply, times: mu.infrom.foodtime)
                                    ZStack{
                                        HStack {
                                            Spacer()
                                            Text("購買數量")
                                                .font(.title2)
                                            TextField("",text: $shownumber)
                                                .frame(maxWidth:.infinity )
                                                .frame( height: 40, alignment: .center)
                                                .padding(.horizontal,10)
                                                .background(Color("Colorone"))
                                                .cornerRadius(20)
                                                .padding(.leading,2)
                                                .padding(.trailing,2)
                                            
                                            ButtonImage(Imagename:"minus.square.fill" )
                                                .onTapGesture {
                                                    if  numbernew > 0 {
                                                        numbernew -= 1
                                                    }
                                                }
                                            ButtonImage(Imagename:"plus.square.fill")
                                                .onTapGesture {
                                                    numbernew += 1
                                                };
                                            Spacer()
                                        }
                                        HStack {
                                            Text("\(numbernew)")
                                        }
                                    }.padding(.top,15)
                                    Text("購買")
                                        .font(.title2)
                                        .frame(width: 100, height: 50)
                                        .cornerRadius(10)
                                        .background(Color(.gray))
                                        .cornerRadius(5)
                                        .onTapGesture {
                                            if numbernew > 0 {
                                                chock.toggle() }
                                            else{
                                                chock_again.toggle()
                                        }  }
                                }
                                .blur(radius: chock ? 9 : 0)
                                .blur(radius: chock_again ? 9 : 0)
                                VStack{
                                    Spacer()
                                        .frame (height:110)
                                    HStack {
                                        Spacer()
                                        Image(systemName: "heart.circle.fill")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                            .foregroundColor(mu.like ? Color("lightred") : Color(.gray))
                                            .padding(.trailing,20)
                                            .onTapGesture {
                                                MyData.mark(id: mu.id, Lk:mu.like ? false : true)
                                                MyData.addlike(value: mu, quanty: numbernew)
                                       }  }
                                    Spacer()
                                }
                                .blur(radius: chock ? 9 : 0)
                                .blur(radius: chock_again ? 9 : 0)
                                VStack{
                                    Spacer()
                                    Text("確定購買？")
                                        .font(.system(size: 35, weight: .heavy, design: .rounded))
                                        .foregroundColor(.white)
                                    Spacer()
                                    HStack {
                                        Text("取消")
                                            .font(.system(size: 35, weight: .heavy, design: .rounded))
                                            .foregroundColor(.white)
                                            .frame(width: 100, height: 50)
                                            .background(Color(.red))
                                            .cornerRadius(10)
                                            .onTapGesture {
                                                chock.toggle()
                                        }

                                        Text("確定")
                                            .font(.system(size: 35, weight: .heavy, design: .rounded))
                                            .foregroundColor(.white)
                                            .frame(width: 100, height: 50)
                                            .background(Color(.red))
                                            .cornerRadius(10)
                                            .onTapGesture {
                                                MyData.addOrder(value: mu, quanty: numbernew)
                                                numbernew = 0
                                                chock.toggle()
                                        }
                                    }
                                    Spacer()
                                }.frame(width: 340, height: 200)
                                    .background(Color(.gray))
                                    .cornerRadius(20)
                                    .offset(x:chock ? 0:1000)
                                VStack{
                                    Spacer()
                                    Text("請填入購買的數量")
                                        .font(.system(size: 35, weight: .heavy, design: .rounded))
                                        .foregroundColor(.white)
                                    Spacer()

                                        Text("ＯＫ ")
                                            .font(.system(size: 35, weight: .heavy, design: .rounded))
                                            .foregroundColor(.white)
                                            .frame(width: 100, height: 50)
                                            .background(Color(.red))
                                            .cornerRadius(10)
                                            .onTapGesture {
                                                chock_again.toggle()
                                    }
                                    Spacer()
                                }.frame(width: 340, height: 200)
                                    .background(Color(.gray))
                                    .cornerRadius(20)
                                    .offset(x:chock_again ? 0:1000)
                            }
                        }
                    } label:{
                        HStack{
                            Image("\(mu.ItemView)")//
                                .resizable()
                                .frame(width: 110, height: 110)
                                .cornerRadius(20)
                            VStack{
                                Text("\(mu.name)")//
                                    .font(.title)
                                    .padding(.vertical,10)
                                    .foregroundColor(.black)
                                Text("＄\(mu.prise)元(NT)")//
                                    .font(.title)
                                    .padding(.bottom,10)
                                    .foregroundColor(.black)
                            }.padding(.vertical,10)
                            Spacer()
                        }.frame(maxWidth:.infinity)//寬度最寬
                            .padding(.leading,15)
                    }
                }
                Spacer()
            }
        }
    }
}

struct VegetableView_Previews: PreviewProvider {
    static var previews: some View {
        VegetableView().environmentObject(ShopMenu())
           
    }
}
