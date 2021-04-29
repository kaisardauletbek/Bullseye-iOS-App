//
//  TextViews.swift
//  Bullseye
//
//  Created by Kaisar Dauletbek on 25.04.2021.
//

import SwiftUI

struct InstructionText: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
        .bold()
        .kerning(2.0)
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
        .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
  var text: String
  
  var body: some View {
    Text(text)
          .bold()
          .fontWeight(.black)
          .kerning(-1.0)
          .multilineTextAlignment(.center)
          .lineSpacing(4.0)
          .font(.largeTitle)
          .foregroundColor(Color("TextColor"))
  }
}

struct SliderLabelText: View {
  var text: String
  
  var body: some View {
    Text(text)
        .bold()
        .foregroundColor(Color("TextColor"))
			.frame(width: 35.0)
  }
}

struct LabelText: View {
	var text: String
	var body: some View {
		Text(text.uppercased())
			.bold()
			.kerning(1.5)
			.multilineTextAlignment(.center)
			.font(.caption)
			.foregroundColor(Color("TextColor"))
	}
}





//MARK: -Preview
struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      InstructionText(text: "Instructions")
      BigNumberText(text:"123")
      SliderLabelText(text: "1")
			LabelText(text: "9")
    }
    }
}

