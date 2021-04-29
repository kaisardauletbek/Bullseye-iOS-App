//
//  BackgroundView.swift
//  Bullseye
//
//  Created by Kaisar Dauletbek on 28.04.2021.
//

import SwiftUI

struct BackgroundView: View {
	@Binding var game: Game
	var body: some View {
		VStack {
			TopView(game: $game)
			Spacer()
			BottomView(game: $game)
		}
		.padding()
		.background(
			Color("BackgroundColor")
				.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
	}
}


struct TopView: View {
	@Binding var game: Game
	var body: some View {
		HStack {
			RoundedImageViewStroked(systemName: "arrow.counterclockwise")
			Spacer()
			RoundedImageViewFilled(systemName: "list.dash")
		}
		
	}
}


struct NumberView: View {
	var title: String
	var text: String
	var body: some View {
		VStack {
			LabelText(text: title.uppercased())
			RoundRectTextView(text: text)
		}
	}
}


struct BottomView: View {
	@Binding var game: Game
	var body: some View {
		HStack {
			NumberView(title: "Score", text: String(game.score ))
			Spacer()
			NumberView(title: "Round", text: String(game.round))
		}
		
	}
}
//MARK:- Preview
struct BackgroundView_Previews: PreviewProvider {
	static var previews: some View {
		VStack {
		BackgroundView(game: .constant(Game()))
		}
	}
}
