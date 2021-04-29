//
//  ShapesView.swift
//  Bullseye
//
//  Created by Kaisar Dauletbek on 27.04.2021.
//

import SwiftUI

struct ShapesView: View {
	var body: some View {
		VStack {
			Circle()
				.strokeBorder(Color.blue, lineWidth: 20.0)
				.frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
			RoundedRectangle(cornerRadius: 20.0)
				.fill(Color.blue)
				.frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
			Capsule()
				.fill(Color.blue)
				.frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
			Ellipse()
				.fill(Color.blue)
				.frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
			Image("folder.circle")
		}
		.background(Color.green)
	}
}




//MARK: -Preview
struct ShapesView_Previews: PreviewProvider {
	static var previews: some View {
		ShapesView()
	}
}
