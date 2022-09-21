//
//  ContentView.swift
//  RGBullsEye
//
//  Created by Simon Rofe on 20/9/2022.
//

import SwiftUI

struct ContentView: View {
    @State var game = Game()
    @State var guess: RGB
    @State var showScore = false

    var body: some View {
        ZStack {
            Color.element
                .ignoresSafeArea()
            VStack {
                ColorCircle(fillColor: game.target, size: 200)
                if showScore {
                    BevelText(text: game.target.intString, width: 200, height: 48)
                        .padding()
                } else {
                    BevelText(text: "R: ??? G: ??? B: ???", width: 200, height: 48)
                        .padding()
                }
                ColorCircle(fillColor: guess, size: 200)
                BevelText(text: guess.intString, width: 200, height: 48)
                    .padding()
                ColorSlider(value: $guess.red, trackColor: .red)
                ColorSlider(value: $guess.green, trackColor: .green)
                ColorSlider(value: $guess.blue, trackColor: .blue)
                Button("Hit Me!") {
                    showScore = true
                    game.check(guess: guess)
                }
                .buttonStyle(NeuButtonStyle(width: 327, height: 48))
                .alert(isPresented: $showScore) {
                    Alert(
                        title: Text("Your Score"),
                        message: Text(String(game.scoreRound)),
                        dismissButton: .default(Text("OK")) {
                            game.startNewRound()
                            guess = RGB()
                        }
                    )
                }
            }
        }
    }
}

struct ColorSlider: View {
    @Binding var value: Double
    var trackColor: Color

    var body: some View {
        HStack {
            Text("0")
            Slider(value: $value)
                .accentColor(trackColor)
            Text("255")
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(guess: RGB())
    }
}
