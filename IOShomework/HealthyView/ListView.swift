//
//  ListView.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/11/4.
//

import SwiftUI

struct ListView: View {
        @State var comeback : Bool = false
        @State var comebacktwo : Bool = false
        @State var comebackthree : Bool = false
    var body: some View {
        VStack {
            Text("飲食習慣")
                .font(.largeTitle)
                .padding(.top,30)
            Spacer()
            Button{
                self.comeback = true
            } label:
            {
                ImagesView(Systemimage:"face.smiling.fill",backclolrs: "healthybuttom",Agetext: "年齡：0～18")            }
            .sheet(isPresented: self.$comeback, content: {
                Heaithylist(comeback: self.$comeback)
            })
            
            Button{
                self.comebacktwo = true
            } label:
            {
                ImagesView(Systemimage:"figure.wave.circle",backclolrs: "healthybuttom2",Agetext: "年齡：18～64")            }
            .sheet(isPresented: self.$comebacktwo, content: {
                HeahtlyTwo(comebacktwo: self.$comebacktwo)
            })

            Button{
                self.comeback = true
            } label:
            {
                ImagesView(Systemimage:"person.circle.fill",backclolrs: "healthybuttom3",Agetext: "年齡：65以上")            }
            .sheet(isPresented: self.$comeback, content: {
                Heaithylist(comeback: self.$comeback)
            })

            
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight:.infinity )
            //.background(Color(.gray))
            .ignoresSafeArea()
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}




struct ImagesView: View {
    @State var Systemimage = " "
    @State var backclolrs = " "
    @State var Agetext = " "
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 280, height: 100, alignment: .center)
                .foregroundColor(Color(backclolrs))
                .cornerRadius(15)
            HStack {
                Image(systemName: Systemimage)
                    .resizable()
                    .frame(width: 65, height: 65, alignment: .center)
                Text("\(Agetext)")
                    .font(.title)
                    .foregroundColor(.black)
            }
        }
    }
}


/*
 comeback(Systemimage:"face.smiling.fill",backclolrs: "healthybuttom",Agetext: "年齡：0～18")
     .padding(.bottom,15)
 comeback(Systemimage:"figure.wave.circle",backclolrs: "healthybuttom2",Agetext: "年齡：18～64")
     .padding(.bottom,15)
 comeback(Systemimage:"person.circle.fill",backclolrs: "healthybuttom3",Agetext: "年齡：65以上")
     .padding(.bottom,15)
 */
