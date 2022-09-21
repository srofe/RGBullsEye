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
        Circle()
            .fill(Color(rgbStruct: fillColor))
            .frame(width: size, height: size)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(fillColor: RGB(), size: 200)
            .frame(width: 300, height: 300)
            .previewLayout(.sizeThatFits)
    }
}
