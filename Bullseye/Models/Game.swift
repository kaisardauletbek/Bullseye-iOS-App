//
//  Game.swift
//  Bullseye
//
//  Created by Kaisar Dauletbek on 11.03.2021.
//

import Foundation

struct Game {
	var target: Int = Int.random(in: 1...100)
	var score: Int = 0
	var round: Int = 1
	
	mutating func startNewRound(points: Int) {
		score += points
		round = round + 1
		var target: Int = Int.random(in: 1...100)
	}
	
	func points(sliderValue: Int) -> Int {
		
		if(sliderValue == self.target) {
			return 200
		} else if(abs(self.target - sliderValue) <= 2) {
			return 150 - abs(self.target - sliderValue)
		} else {
			return 100 - abs(self.target - sliderValue)
		}
		
	}
}

