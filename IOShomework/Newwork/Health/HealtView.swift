//
//  HealtView.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/12/3.
//

import SwiftUI

struct HealtView: View {
    
    @EnvironmentObject var AgeViews:VGinform
    
    var body: some View {
        NavigationView{
            VStack {
                Spacer().frame(height: 30)
                VStack {
                    Spacer()
                    Text("家庭人數計算")
                        .font(.system(size: 30))
                    TabView{
                        ForEach(AgeViews.AGEbox){ ag in
                            HStack {
                                VStack(alignment: .leading,spacing: 15){
                                    Text("\(ag.sex)")
                                        .font(.system(size: 30, weight: .heavy, design: .rounded))
                                     AgeView(Agelimits: ag.AGEname.year2_6, AgeNumber:ag.AGEnumber.year2_6)
                                    AgeView(Agelimits: ag.AGEname.year7_12, AgeNumber:ag.AGEnumber.year7_12)
                                    AgeView(Agelimits: ag.AGEname.year13_18, AgeNumber:ag.AGEnumber.year13_18)
                                    AgeView(Agelimits: ag.AGEname.year19_30, AgeNumber:ag.AGEnumber.year19_30)
                                    AgeView(Agelimits: ag.AGEname.year31_50, AgeNumber:ag.AGEnumber.year31_50)
                                    AgeView(Agelimits: ag.AGEname.year51_70, AgeNumber:ag.AGEnumber.year51_70)
                                    AgeView(Agelimits: ag.AGEname.year71, AgeNumber:ag.AGEnumber.year71)
                                    Spacer().frame(width:200)
                                }
                                Spacer()
                            }.frame(width: 280, height: 450)
                        }
                    }.tabViewStyle(PageTabViewStyle())
                    Spacer()
                }.frame(width: 320, height: 520)
                    .background(Color("確定Color"))
                    .cornerRadius(15)
                NavigationLink{
                    resultview()
                } label: {
                    HStack{
                        Text("確定")
                            .font(.title)
                            .frame(width: 80, height: 70)
                            .background(Color(.red))
                            .cornerRadius(4)
                            .foregroundColor(.white)
                    }
                }
                Spacer()
            }.navigationBarTitle(Text("蔬果防疫箱"))
        }
    }
}

struct HealtView_Previews: PreviewProvider {
    static var previews: some View {
        HealtView().environmentObject(VGinform())
    }
}


struct resultview: View {
    var body: some View {
        VStack {
            Text("建議購買數量")
                .font(.largeTitle)
            VStack {
                Text("蔬菜:OO份")
                    .font(.title)
                    .padding(4)
                Rectangle()
                    .frame(maxWidth:.infinity)
                    .frame(height: 1)
                Spacer()
                Text("水果:OO份")
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
                
            }
            Spacer()
        }
    }
}

struct AgeView: View {
    
    @State var Agelimits = " "
    @State var AgeNumber:Int
    
    var body: some View {
        HStack{
            Text("年紀")
                .font(.title2)
            Text(Agelimits)
                .font(.title2)
            Text(":")
                .font(.title2)
            Text("\(AgeNumber)人")
                .font(.title2)
        }
        .padding(5)
        
    }
}
