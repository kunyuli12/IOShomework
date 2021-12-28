//
//  ProductView.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/12/6.
//

import SwiftUI

struct ProductView: View {
    
    @State var image = ""
    @State var Itemname = ""
    @State var money = ""
    @State var weight = ""
    @State var place = ""
    @State var times = ""
    @State var FooodInfrom = ""
    @State var FoodEffect = ""
    
    @State var onoff : Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Image("\(image)")
                    .resizable()
                    .frame(width: 200, height: 160)
                    .cornerRadius(15)
                Rectangle()
                    .frame(maxWidth:.infinity )
                    .frame(height: 1)
                Spacer()
                    .frame(height:20)
                ScrollView(showsIndicators:false) {
                    Text("產品名稱：\(Itemname)")
                        .modifier(textmod())
                    Text("價錢:\(money)")
                        .modifier(textmod())
                    Text("重量:\(weight)")
                        .modifier(textmod())
                    Text("產地:\(place)")
                        .modifier(textmod())
                    Text("保存期限:\(times)")
                        .modifier(textmod())
                    HStack {
                        Text("營養資訊")
                            .font(.title3)
                            .padding(.leading,10)
                            .padding(.bottom,5)
                            .foregroundColor(.blue)
                        Button {
                            onoff.toggle()
                        } label: {
                            Image(systemName:"exclamationmark.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.yellow)
                                .padding(.bottom,5)
                        }
                        Spacer()
                    }
                  /*  buybuttom()
                        .padding(.top,15)
                        Text("購買")
                        .font(.title2)
                        .frame(width: 100, height: 50)
                        .background(Color(.gray))
                       */
                }
                Spacer()
            }
            ZStack{
            Productnews(FooodInfrom: FooodInfrom, FoodEffect:FoodEffect ).offset(x: onoff ? 0:1000)
            comeback().offset(x: onoff ? 0:1000)
            }.frame(width:350, height: 600)
        }
    }
    
    @ViewBuilder func comeback () -> some View {
        HStack {
            VStack {
                Button {
                    onoff.toggle()
                } label: {
                    Image(systemName: "arrowshape.turn.up.backward.circle.fill")
                        .resizable()
                        .frame(width: 30, height:30)
                        .padding()
                }
                Spacer()
            }
            Spacer()
        }
    }
    
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}

struct textmod:ViewModifier{
    func body(content: Content) -> some View {
        HStack {
            content
                .font(.title3)
            .padding(.leading,10)
            .padding(.bottom,5)
            Spacer()
        }
    }
    
}

struct Productnews: View {
    
    @State var FooodInfrom = ""
    @State var FoodEffect = ""
    
    var body: some View {
        ZStack {
            TabView{
                ZStack {
                    Rectangle()
                        .frame(width:350, height: 600)
                        .foregroundColor(.gray)
                       
                    VStack {
                        Text("\(FooodInfrom)")
                        frame(width: 300, height: 500)
                    }
                }
                ZStack {
                    Rectangle()
                        .frame(width:350, height: 600)
                        .foregroundColor(.gray)
                        
                    VStack {
                        Text("\(FoodEffect)")
                            .frame(width: 300, height: 500)
                    }
                }
            } .tabViewStyle(PageTabViewStyle())
          
        }.frame(width:350, height: 600)
    }
}
