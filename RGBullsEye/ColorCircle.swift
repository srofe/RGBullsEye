//
//  ColorCircle.swift
//  RGBullsEye
//
//  Created by Simon Rofe on 21/9/2022.
//

import SwiftUI

struct ColorCircle: View {
    var fillColor: RGB
    var size: CGFloat

    var body: some View {
        ZStack {
            Circle()
                .fill(Color.element)
                .northWestShadow()
            Circle()
                .fill(Color(rgbStruct: fillColor))
                .padding(20)
        }
        .frame(width: size, height: size)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.element
            ColorCircle(fillColor: RGB(), size: 200)
        }
        .frame(width: 300, height: 300)
        .previewLayout(.sizeThatFits)
    }
}
