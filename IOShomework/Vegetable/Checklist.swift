//
//  Checklist.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/11/4.
//

import SwiftUI

struct Checklist: View {
    @State var thImage = "A"
    @State var prise = " 商品A "
    @State var thingname = " A "
    @State var idd : Int
    var body: some View {
        ZStack {
            Rectangle()
                .frame(maxWidth:.infinity)
                .frame(height: 140, alignment: .center)
                .foregroundColor(.black)
            Rectangle()
                .frame(maxWidth:.infinity)
                .frame(height: 137, alignment: .center)
                .foregroundColor(.white)
                .padding(3)
            HStack {
                Image("\(thImage)")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .cornerRadius(10)
                VStack {
                    Text("\(thingname)")
                        .font(.title)
                    Text("\(prise)元(NT)")
                        .font(.title3)
                }
            }
        }.id(idd)
    }
}

struct Checklist_Previews: PreviewProvider {
    static var previews: some View {
        Checklist(idd: 8)
    }
}
