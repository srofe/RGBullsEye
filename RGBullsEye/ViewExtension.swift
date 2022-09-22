//
//  ViewExtension.swift
//  RGBullsEye
//
//  Created by Simon Rofe on 21/9/2022.
//

import SwiftUI

extension View {
    func northWestShadow(radius: CGFloat = 16, offset: CGFloat = 6) -> some View {
        return self
            .shadow(color: .highlight, radius: radius, x: -offset, y: -offset)
            .shadow(color: .shadow, radius: radius, x: offset, y: offset)
    }

    func sourEastShadow(radius: CGFloat = 16, offset: CGFloat = 6) -> some View {
        return self
            .shadow(color: .shadow, radius: radius, x: -offset, y: -offset)
            .shadow(color: .highlight, radius: radius, x: offset, y: offset)
    }
}
