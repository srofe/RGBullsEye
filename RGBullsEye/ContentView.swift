//
//  ContentView.swift
//  RGBullsEye
//
//  Created by Simon Rofe on 20/9/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Color(red: 0.5, green: 0.5, blue: 0.5)
            Text("R: ??? G: ??? B: ???")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
