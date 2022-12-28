//
//  MinView.swift
//  Classic09
//
//  Created by 暨大附中03 on 2021/10/29.
//

import SwiftUI

struct MinView: View {
    @State var msg = " "
    @StateObject var talksdata = TalkData()
    
    var body: some View {
        ZStack {
            Image("backone")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight:.infinity)
                .padding(5)
                .ignoresSafeArea()
            
            ScrollViewReader{ value in
                
                VStack(alignment:.leading) {
                    
                    ScrollView(showsIndicators:false) {     ForEach(talksdata.myTalks){ tk in
                        if(tk.ismytalking == false){
                            talkviewleft(name: tk.name,talk: tk.talk, date: tk.date)
                        }else{
                            talkviewright(name: tk.name,talk: tk.talk, date: tk.date).id(1)
                        }
                    }
                        Text("最後").id("last")
                            .foregroundColor(Color(.clear))
                        
                        Button{
                            value.scrollTo(1, anchor: .top)
                        } label:{
                            Text("目標")
                        }
                    }.frame(maxHeight:.infinity )
                        .padding(.top,25)
                        .ignoresSafeArea()
                    
                    Talkmsg(msg:$msg)
                }
            }
            
        }.frame(maxWidth: .infinity, maxHeight:.infinity)
            .background(Color("backcolor"))
            .ignoresSafeArea()
    }
}

struct MinView_Previews: PreviewProvider {
    static var previews: some View {
        MinView()
    }
}

extension TalkData{
    func listCollctionName() -> String {
        return path
    }
}
