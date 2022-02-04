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
    @State var issure:Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Text("建議購買數量")
                    .font(.largeTitle)
                VStack {
                    Text("蔬菜需要\(String(format: "%.0f",VGnumber))份")
                        .font(.title)
                        .padding(4)
                    Rectangle()
                        .frame(maxWidth:.infinity)
                        .frame(height: 1)
                    Spacer()
                    Text("水果需要\(String(format: "%.0f",Friutnumber))份")
                        .font(.title)
                    Rectangle()
                        .frame(maxWidth:.infinity)
                        .frame(height: 1)
                    Spacer()
                    
                }.frame(width: 380, height: 540)
                    .background(Color("確定Color"))
                .cornerRadius(20)
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
                    .foregroundColor(.white)                    .frame(width: 90, height: 50)
                    .background(Color(.red))
                    .cornerRadius(10)
                    .onTapGesture {
                        issure.toggle()
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
        resultview()
    }
}
