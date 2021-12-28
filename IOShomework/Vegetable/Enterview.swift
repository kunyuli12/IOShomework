//
//  Enterview.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/11/8.
//

import SwiftUI

struct Enterview: View {
    var body: some View {
            NavigationView{
                ZStack {
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight:.infinity )
                        .foregroundColor(Color(.gray))
                        .ignoresSafeArea()
                    VStack {
                        NavigationLink{
                            Mainscreen(titleword:"食材列表(葷食)")
                        } label:{
                            TitleView(text:"吃葷")
                        }
                        
                        NavigationLink{
                            Mainscreen(titleword:"食材列表(素食)")
                        } label:{
                            TitleView(text:"吃素")
                        }
                        
                        NavigationLink{
                            Mainscreen(titleword:"食材列表(其他過敏原)")
                        } label:{
                            TitleView(text:"其他過敏")
                        }
                        
                    }.padding(9)
                }.navigationBarTitle( Text("飲食習慣"))
            }
        
    }
}

struct Enterview_Previews: PreviewProvider {
    static var previews: some View {
        Enterview()
    }
}

struct TitleView: View {
    @State var text = ""
    var body: some View {
        HStack {
            Text(text)
                .font(.title)
            
            Image(systemName: "moon.fill")
                .resizable()
                .frame(width: 45, height: 45, alignment: .center)
        }
        .frame(maxWidth: .infinity, maxHeight:.infinity )
        .background(Color(.white))
        .cornerRadius(20)
    }
}


/*
 
 Button{
     
 } label:{
     VStack {
 }
}
 */
