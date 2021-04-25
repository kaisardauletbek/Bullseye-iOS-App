//
//  TextViews.swift
//  Bullseye
//
//  Created by Kaisar Dauletbek on 25.04.2021.
//

import SwiftUI

struct InstructionText: View {
    var body: some View {
      Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO".uppercased())
        .bold()
        .kerning(2.0)
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
        .padding(.leading, 30.0)
        .padding(.trailing, 30.0)
        .foregroundColor(Color("TextColor"))
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        InstructionText()
    }
}
