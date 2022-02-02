//
//  testone.swift
//  VGBox
//
//  Created by 暨大附中03 on 2022/1/30.
//

import SwiftUI

struct testone: View {
    @State private var username: String = ""
    @FocusState private var emailFieldIsFocused: Bool = false
  
    var body: some View {
          TextField(
              "User name (email address)",
              text: $username
          )
          .focused($emailFieldIsFocused)
           .onSubmit {
              validate(name: username)
           }
          .textInputAutocapitalization(.never)
          .disableAutocorrection(true)
           .border(.secondary)
  
           Text(username)
             .foregroundColor(emailFieldIsFocused ? .red : .blue)
       }
}

struct testone_Previews: PreviewProvider {
    static var previews: some View {
        testone()
    }
}
