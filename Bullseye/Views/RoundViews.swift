//
//  RoundViews.swift
//  Bullseye
//
//  Created by Kaisar Dauletbek on 27.04.2021.
//

import SwiftUI

struct RoundedImageViewStroked: View {
	var systemName: String
	
	var body: some View {
		Image(systemName: systemName)
			.font(.title)
			.foregroundColor(Color("TextColor"))
			.frame(width: 56, height: 56)
			.overlay(
				Circle()
					.strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
			)
	}
}


struct RoundedImageViewFilled : View {
	var systemName: String
	
	var body: some View {
		Image(systemName: systemName)
			.font(.title)
			.foregroundColor(Color("ButtonFilledTextColor"))
			.frame(width: 56, height: 56)
			.background(
				Circle()
					.fill(Color("ButtonFilledBackgroundColor"))
			)
	}
}

struct RoundRectTextView: View {
	var text: String
	var body: some View {
		 Text(text)
			.kerning(-0.2)
			.bold()
			.font(.title3)
			.frame(width: 68.0, height: 56.0 )
			.foregroundColor(Color("TextColor"))
			.overlay(
				RoundedRectangle(cornerRadius: 21.0)
					.strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
			)
	}
}

struct PreviewView: View {
	var body: some View {
		VStack(spacing: 10) {
			RoundedImageViewStroked(systemName: "arrow.counterclockwise")
			RoundedImageViewStroked(systemName: "list.dash")
			RoundRectTextView(text: "0")
		}
		VStack(spacing: 10) {
			RoundedImageViewFilled(systemName: "arrow.counterclockwise")
			RoundedImageViewFilled(systemName: "list.dash")
		}
	}
}


//MARK: - Preview


struct RoundViews_Previews: PreviewProvider {
	static var previews: some View {
		PreviewView()
		PreviewView()
			.preferredColorScheme(.dark)
		
	}
}



