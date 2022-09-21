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

    var body: some View {
        VStack {
            Color(rgbStruct: game.target)
            Text("R: ??? G: ??? B: ???")
                .padding()
            Color(rgbStruct: guess)
            Text(guess.intString())
                .padding()
            ColorSlider(value: $guess.red, trackColor: .red)
            Button("Hit Me!") {}
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
        ContentView(guess: RGB(red: 0.8, green: 0.3, blue: 0.7))
    }
}
