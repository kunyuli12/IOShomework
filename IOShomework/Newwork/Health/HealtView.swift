//
//  HealtView.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/12/3.
//

import SwiftUI

struct HealtView: View {
    
    @EnvironmentObject var AgeViews:VGinform
    @State var quanty_B:Int = 0
    @State var quanty_G:Int = 0
    @State var isAddTitle = " "
    @State var isLowTitle = " "
    @State var anserVGB:Float = 0.0
    @State var anserFUB:Float = 0.0
    @State var anserVGG:Float = 0.0
    @State var anserFUG:Float = 0.0
    @State var anserVG:Float = 0.0
    @State var anserFU:Float = 0.0
    
    
    var body: some View {
        NavigationView{
            VStack {
                Spacer().frame(height: 30)
                VStack {
                    Spacer()
                    Text("家庭人數計算")
                        .font(.system(size: 30))
                    TabView{
                        boyview()
                        girlview()
                    }.tabViewStyle(PageTabViewStyle())
                    Spacer()
                }.frame(width: 320, height: 520)
                    .background(Color("確定Color"))
                    .cornerRadius(15)
                NavigationLink{
                    resultview(VGnumber: anserVG, Friutnumber: anserFU)
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
    @ViewBuilder func boyview() -> some View{
        HStack {
            VStack(alignment: .leading,spacing: 15){
                Text("MAN")
                    .font(.system(size: 30, weight: .heavy, design: .rounded))
                ForEach(AgeViews.AGEbox_B){ ags in
                    VStack(alignment: .leading,spacing: 15){
                        HStack {
                            AgeView(Agelimits: ags.AGEname)
                            Text("\(String(format: "%.0f", ags.AGEnumber))人")
                                .font(.title2)
                            Spacer()
                            Image(systemName: "minus.circle.fill")
                                .resizable()
                                .frame(width: 25, height: 25 )
                                .foregroundColor(isLowTitle == ags.AGEname ? Color.red : Color.blue)
                                .onTapGesture {
                                    AgeViews.LowBoy(value: ags, quanty: 1)
                                    anserVGB = AgeViews.VGDemandB(tempBoy: AgeViews.AGEbox_B)
                                    anserFUB = AgeViews.FriutDemandB(tempBoy: AgeViews.AGEbox_B)
                                    anserVG = anserVGB + anserVGG
                                    anserFU = anserFUB + anserFUG
                                    withAnimation(.easeInOut) {
                                        isLowTitle = ags.AGEname
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                            isLowTitle = ""
                                        }
                                    }
                                }
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .frame(width: 25, height: 25 )
                                .foregroundColor(isAddTitle == ags.AGEname ? Color.red : Color.blue)
                                .onTapGesture {
                                    AgeViews.AddBoy(value: ags,quanty: 1)
                                    anserVGB = AgeViews.VGDemandB(tempBoy: AgeViews.AGEbox_B)
                                    anserFUB = AgeViews.FriutDemandB(tempBoy: AgeViews.AGEbox_B)
                                    anserVG = anserVGB + anserVGG
                                    anserFU = anserFUB + anserFUG
                                    withAnimation(.easeInOut) {
                                        isAddTitle = ags.AGEname
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                            isAddTitle = ""
                                        }
                                    }

                                }
                        }
                    }
                }
                Spacer().frame(width:200)
            }
            Spacer()
        }.frame(width: 280, height: 450)
    }
    @ViewBuilder func girlview() -> some View{
        HStack {
            VStack(alignment: .leading,spacing: 15){
                Text("WOMAN")
                    .font(.system(size: 30, weight: .heavy, design: .rounded))
                ForEach(AgeViews.AGEbox_G){ ags in
                    VStack(alignment: .leading,spacing: 15){
                        HStack {
                            AgeView(Agelimits: ags.AGEname)
                            Text("\(String(format: "%.0f", ags.AGEnumber))人")
                                .font(.title2)
                            Spacer()
                            Image(systemName: "minus.circle.fill")
                                .resizable()
                                .frame(width: 25, height: 25 )
                                .foregroundColor(isLowTitle == ags.AGEname ? Color.red : Color.blue)
                                .onTapGesture {
                                    AgeViews.LowGirl(value: ags, quanty: 1)
                                    anserVGG = AgeViews.VGDemandG(tempGirl: AgeViews.AGEbox_G)
                                    anserFUG = AgeViews.FriutDemandG(tempGirl: AgeViews.AGEbox_G)
                                    anserVG = anserVGB + anserVGG
                                    anserFU = anserFUB + anserFUG
                                    withAnimation(.easeInOut) {
                                        isLowTitle = ags.AGEname
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                            isLowTitle = ""
                                        }
                                    }

                                }
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .frame(width: 25, height: 25 )
                                .foregroundColor(isAddTitle == ags.AGEname ? Color.red : Color.blue)
                                .onTapGesture {
                                    AgeViews.AddGirl(value: ags, quanty: 1)
                                    anserVGG = AgeViews.VGDemandG(tempGirl: AgeViews.AGEbox_G)
                                    anserFUG = AgeViews.FriutDemandG(tempGirl: AgeViews.AGEbox_G)
                                    anserVG = anserVGB + anserVGG
                                    anserFU = anserFUB + anserFUG
                                    withAnimation(.easeInOut) {
                                        isAddTitle = ags.AGEname
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                            isAddTitle = ""
                                        }
                                    }

                                }
                        }
                    }
                }
                Spacer().frame(width:200)
            }
            Spacer()
        }.frame(width: 280, height: 450)
    }
}

struct HealtView_Previews: PreviewProvider {
    static var previews: some View {
        HealtView().environmentObject(VGinform())
    }
}



struct AgeView: View {
    
    @State var Agelimits = " "
    
    var body: some View {
        HStack{
            Text("年紀")
                .font(.title2)
            Text(Agelimits)
                .font(.title2)
            Text(":")
                .font(.title2)
        }
        .padding(5)
        
    }
}
