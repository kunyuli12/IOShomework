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
                        
                        Image(systemName:"exclamationmark.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.yellow)
                            .padding(.bottom,5)
                            .onTapGesture {
                                onoff.toggle()
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
            Productnews(onoff: .constant(false)).offset(x: onoff ? 0:1000)
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
    
    @Binding var onoff : Bool
    
    var body: some View {
        ZStack {
            TabView{
                ZStack {
                    Rectangle()
                        .frame(width:200, height: 200)
                        .foregroundColor(.gray)
                       
                    VStack {
                        Text("Hollow")
                        Text("")
                    }
                }
                ZStack {
                    Rectangle()
                        .frame(width:200, height: 200)
                        .foregroundColor(.gray)
                        
                    VStack {
                        Text("Hollowsss")
                        Text("")
                    }
                }
            } .tabViewStyle(PageTabViewStyle())
            HStack {
                VStack {
                    Image(systemName: "arrowshape.turn.up.backward.circle.fill")
                        .resizable()
                        .frame(width: 30, height:30)
                        .padding(4)
                        .onTapGesture {
                            onoff.toggle()
                        }
                    Spacer()
                }
                Spacer()
            }
        }.frame(width:200, height: 200)
           
            
    }
}
