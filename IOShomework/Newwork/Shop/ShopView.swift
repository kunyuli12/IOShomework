//
//  ShopView.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/12/3.
//

import SwiftUI

struct ShopView: View {
    
    @EnvironmentObject var MyData:ShopMenu
    
    var body: some View {
        NavigationView{
            VStack{
                ForEach(MyData.Shoppingtest){ sh in
                NavigationLink{
                    VegetableView(MyShopes: sh)
                } label: {
                    ZStack {
                        Rectangle()
                            .frame(width: 300, height: 120, alignment: .center)
                            .cornerRadius(15)
                        Text("\(sh.boxname)")
                            .font(.title)
                            .foregroundColor(.black)
                    }
                }
                Spacer()
                    .frame(height: 30)
                }
            }.navigationBarTitle(Text("選擇食材清單"),displayMode: .inline)
        }
        
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
