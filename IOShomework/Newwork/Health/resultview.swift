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
    
    var body: some View {
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
                
            }
            Spacer()
        }
    }
}

struct resultview_Previews: PreviewProvider {
    static var previews: some View {
        resultview()
    }
}
