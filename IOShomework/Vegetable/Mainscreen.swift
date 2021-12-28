//
//  Mainscreen.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/11/4.
//

import SwiftUI

struct Mainscreen: View {
    @State var titleword = " "
    var body: some View {
            ZStack{
                Rectangle()
                    .frame(maxWidth:.infinity )
                    .frame(maxHeight:.infinity)
                    .foregroundColor(.white)
                    .ignoresSafeArea()
                VStack {
                    Text(titleword)
                        .font(.largeTitle)
                    Textbuttom()
                    ScrollViewReader{ value in
                        Button{
                            value.scrollTo(4, anchor: .bottomLeading)
                        } label:{
                            Text("目標")
                        }
                        ScrollView(showsIndicators:false) {
                            ForEach(vegetables){ vs in
                                Checklist(thImage: vs.vegetableView, prise: vs.prise, thingname: vs.name, idd:  vs.IDs)
                                    .padding(.horizontal,10)
                            }
                        }
                    }
                }
                buttommain()
            }
        
    }
}

struct Mainscreen_Previews: PreviewProvider {
    static var previews: some View {
        Mainscreen()
    }
}


