//
//  Modifier.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/11/5.
//

import SwiftUI

struct Modifier: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .modifier(textMod(color: .red))
            Text("Hello, World!!!!!")
                .modifier(textMod())
            Text("ssss")
        }
    }
}

struct Modifier_Previews: PreviewProvider {
    static var previews: some View {
        Modifier()
    }
}
struct textMod:ViewModifier{
    @State var color:Color = Color.green
    func body(content: Content) -> some View {
        content
            .font(.system(size:30))
            .font(.title.bold())
            .foregroundColor(color)
    }
}
