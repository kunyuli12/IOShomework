//
//  HeahtlyTwo.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/11/8.
//

import SwiftUI

struct HeahtlyTwo: View {
    @Binding var comebacktwo : Bool
    var body: some View {
        ZStack {
            TextView(titletext:"吃素的（年齡）建議一天")
            VStack {
                HStack {
                    Button{
                        self.comebacktwo = false
                    } label:{
                        Imageview()
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct HeahtlyTwo_Previews: PreviewProvider {
    static var previews: some View {
        HeahtlyTwo(comebacktwo: .constant(false))
    }
}
