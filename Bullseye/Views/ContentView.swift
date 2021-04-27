//
//  ContentView.swift
//  Bullseye
//
//  Created by Kaisar Dauletbek on 05.03.2021.
//

import SwiftUI


struct ContentView: View {
	
	@State private var alertIsVisible: Bool = false
	@State private var sliderValue: Double = 50.0
	@State private var game: Game = Game()
	
	var body: some View {
		
		// MARK: - VStack
		ZStack {
			Color("BackgroundColor")
				.edgesIgnoringSafeArea(.all)
			VStack{
				InstructionsView(game: $game)
				
				SliderView(sliderValue: $sliderValue)
				
				HitMeButtonView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game, text: "Hit me!")
				
			}
			
		}
	}
}

struct InstructionsView: View {
	@Binding var game: Game
	var body: some View {
		VStack{
			InstructionText(text: "🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
				.padding(.leading, 30.0)
				.padding(.trailing, 30.0)
			BigNumberText(text: String(game.target))
		}
	}
}

struct SliderView: View {
	@Binding var sliderValue: Double
	var body: some View {
		HStack  {
			SliderLabelText(text: "1")
			Slider(value: self.$sliderValue, in: 1.0...100.0)
			SliderLabelText(text: "100")
		}
		.padding()
	}
}

struct HitMeButtonView: View {
	@Binding var alertIsVisible: Bool
	@Binding var sliderValue: Double
	@Binding var game: Game
	var text: String
	
	var body: some View {
		Button(action: {
			print("hello world")
			self.alertIsVisible = true
		}) {
			Text(text.uppercased())
				.bold()
				.font(.title3)
			
		}
		.padding(20.0)
		.background(ZStack {
									Color("ButtonColor")
									LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)})
		
		.foregroundColor(.white)
		.cornerRadius(21.0)
		.overlay(
			RoundedRectangle(cornerRadius: 21.0)
				.strokeBorder(Color.white, lineWidth: 2.0)
		)
		
		.alert(isPresented: $alertIsVisible, content: {
			let roundedValue: Int = Int(sliderValue.rounded())
			return Alert(title: Text("Hello There!"), message: Text("The slider's value is \(roundedValue).\n" + "You scored \(self.game.points(sliderValue: roundedValue)) points this round"), dismissButton: .default(Text("Awesome!")))
		})
		
	}
}


//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
		ContentView()
			.previewLayout(.fixed(width: 568 , height: 320))
		ContentView()
			.preferredColorScheme(.dark)
		ContentView()
			.preferredColorScheme(.dark)
			.previewLayout(.fixed(width: 568 , height: 320))
		
		
		
	}
}
