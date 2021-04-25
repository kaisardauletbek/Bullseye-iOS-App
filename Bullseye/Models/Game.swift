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
  
  func points(sliderValue: Int) -> Int {
    100 - abs(self.target - sliderValue)
  }
}

