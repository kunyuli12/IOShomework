//
//  buttommain.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/11/4.
//

import SwiftUI

struct buttommain: View {
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                NavigationLink{
                    ListView()
                } label: {
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color(hue: 0.625, saturation: 0.146, brightness: 0.933))
                        Text("enter")
                            .font(.title3)
                    }.frame(width: 75, height: 50, alignment:.center)
                        .cornerRadius(20)
                }
                Spacer()
            }.padding(.leading,10)
        }.padding(.bottom,10)
    }
}

struct buttommain_Previews: PreviewProvider {
    static var previews: some View {
        buttommain()
    }
}
