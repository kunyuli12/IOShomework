//
//  Star.swift
//  IOShomework
//
//  Created by 暨大附中03 on 2021/12/7.
//

import SwiftUI

struct Star: View {
    
    @State var piontnumber = 0
    
    var body: some View {
        VStack {
            Text("\(piontnumber + 1)")
            HStack{
                ForEach(0..<5){ numbers in
                    Starnumber(Imaview:"star",number: numbers, imagecolor:.yellow, piontnumber: $piontnumber)
                }
            }
            HStack{
                ForEach(0..<5){ numbers in
                    Starnumber(Imaview:"heart",number: numbers,imagecolor:.red, piontnumber: $piontnumber)
                }
            }
        }
    }
}

struct Star_Previews: PreviewProvider {
    static var previews: some View {
        Star()
    }
}

struct Starnumber: View {
    
    @State var Imaview = " "
    @State var number = 0
    @State var imagecolor:Color
    @Binding var piontnumber:Int
    
    var body: some View {
        VStack{
            Image(systemName: number <= piontnumber ? "\(Imaview).fill":"\(Imaview)")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(imagecolor)
        }.onTapGesture{
            piontnumber = number
            
        }
    }
}
