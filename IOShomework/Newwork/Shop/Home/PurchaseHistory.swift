//
//  PurchaseHistory.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/12/13.
//

import SwiftUI

struct PurchaseHistory: View {
    
    @EnvironmentObject var MyData:ShopMenu
    @State var showOrder = false
    
    var body: some View {
        VStack {
            Text("Order History")
                .font(.largeTitle)
            Spacer()
            ScrollView(showsIndicators:false) {
                ForEach(MyData.Orders){ od in
                    VStack{
                        Text("History Order")
                            .font(.title)
                        Text("Order\(od.id)")
                           
                    }.frame(width: 370, height: 100)
                        .background(Color(.yellow))
                        .cornerRadius(20)
                        .onTapGesture {
                            showOrder.toggle()
                        }
                }
            }
        }
    }
}

struct PurchaseHistory_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseHistory().environmentObject(ShopMenu())
    }
}
