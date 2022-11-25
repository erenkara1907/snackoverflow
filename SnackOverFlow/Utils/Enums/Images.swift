//
//  Images.swift
//  SnackOverFlow
//
//  Created by Eren Kara on 22.11.2022.
//

import Foundation
import SwiftUI

struct ImageItems {
    enum Authentication: String {
        case juice = "img_juice"
        case wolcano = "img_wolcano"
    }
}

extension String {
    /// String path to image
    /// - Returns: related image from Image asset
    func image() -> Image {
        return Image(self)
    }
}
