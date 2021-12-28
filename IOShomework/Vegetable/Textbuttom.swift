//
//  Textbuttom.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/11/5.
//

import SwiftUI

struct Textbuttom: View {
    @State var textview = " "
    var body: some View {
        HStack {
            TextField("搜尋",text: $textview)
                .frame(maxWidth:.infinity )
                .frame( height: 50, alignment: .center)
                .background(Color("Colorone"))
                .cornerRadius(20)
                .padding(.leading,8)
                .padding(.trailing,8)
            Button{
                
            } label: {
                Image(systemName: "paperplane.fill")
                    .resizable()
                    .frame(width: 35, height: 35, alignment: .center)
                    .padding(9)
                    .background(Color(.green))
                    .cornerRadius(15)
                    .padding(.trailing,5)
            }
        }
    }
}

struct Textbuttom_Previews: PreviewProvider {
    static var previews: some View {
        Textbuttom()
    }
}
