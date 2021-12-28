//
//  MainViews.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/12/3.
//

import SwiftUI

struct MainViews: View {
    
    @StateObject var MyData = ShopMenu()
    
    var body: some View {
        TabView{
                ShopView().environmentObject(MyData).tabItem { Image(systemName:"cart.fill.badge.plus")
                }          
            HomeView().environmentObject(MyData).tabItem { Image(systemName:"house.fill")
                }
            HealtView().environmentObject(MyData).tabItem { Image(systemName:"heart.text.square.fill")
            }
        }
    }
}

struct MainViews_Previews: PreviewProvider {
    static var previews: some View {
        MainViews()
    }
}
