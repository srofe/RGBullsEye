//
//  NeuButtonStyle.swift
//  RGBullsEye
//
//  Created by Simon Rofe on 21/9/2022.
//

import SwiftUI

struct NeuButtonStyle: ButtonStyle {
    let width: CGFloat
    let height: CGFloat

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: width, height: height)
            .background(
                Capsule()
                    .fill(Color.element)
                    .northWestShadow())
    }
}