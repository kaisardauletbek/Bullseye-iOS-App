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
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO".uppercased())
              .bold()
              .kerning(2.0)
              .multilineTextAlignment(.center)
              .lineSpacing(4.0)
              .font(.footnote)
              .padding(.leading, 30.0)
              .padding(.trailing, 30.0)
              .foregroundColor(Color("TextColor"))
            Text(String(game.target))
                  .bold()
                  .fontWeight(.black)
                  .kerning(-1.0)
                  .multilineTextAlignment(.center)
                  .lineSpacing(4.0)
                  .font(.largeTitle)
                  .foregroundColor(Color("TextColor"))

            
                  HStack{
                      Text("1")
                        .bold()
                        .foregroundColor(Color("TextColor"))


                    Slider(value: self.$sliderValue, in: 1.0...100.0)
                      Text("100")
                        .bold()
                        .foregroundColor(Color("TextColor"))


              }
                  .padding()
              Button(action: {
                print("hello world")
                  self.alertIsVisible = true
              }) {
                Text("Hit Me!".uppercased())
                  .bold()
                  .font(.title3) 
                  

              }
                .padding(20.0)
              
              .background(ZStack {
                Color("ButtonColor")
                            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)})
              
                .foregroundColor(.white)
                .cornerRadius(21.0)
              
              .alert(isPresented: $alertIsVisible, content: {
                let roundedValue: Int = Int(sliderValue.rounded())
                return Alert(title: Text("Hello There!"), message: Text("The slider's value is \(roundedValue).\n" + "You scored \(self.game.points(sliderValue: roundedValue)) points this round"), dismissButton: .default(Text("Awesome!")))
              })
            
          }
        
      }
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
