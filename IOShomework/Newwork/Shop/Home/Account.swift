//
//  Account.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/12/13.
//

import SwiftUI

//未完成

struct Account: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height:20)
            HStack {
                Circle()
                    .frame(width: 170, height: 170)
                    .padding(.trailing,20)
                Text("使用者：Bill Lee")
                    .font(.title)
            }
            Rectangle()
                .frame(maxWidth:.infinity)
                .frame(height:1.5)

            Spacer()
                .frame(height:50)
            HStack{
                VStack(spacing: 30){
                    Text("電子郵件:")
                        .font(.title2)
                    Text("聯絡電話:")
                        .font(.title2)
                    Text("住家地址:")
                        .font(.title2)
                    Text("  密碼  :")
                        .font(.title2)
                }.padding(.leading,30)
                Spacer()
        }
            Spacer()
        }
    }
}

struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account()
    }
}
