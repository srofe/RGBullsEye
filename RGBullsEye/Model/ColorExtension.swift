//
//  ColorExtension.swift
//  RGBullsEye
//
//  Created by Simon Rofe on 20/9/2022.
//

import Foundation
import SwiftUI

extension Color {
    init(rgbStruct rgb: RGB) {
        self.init(red: rgb.red, green: rgb.green, blue: rgb.blue)
    }
}
