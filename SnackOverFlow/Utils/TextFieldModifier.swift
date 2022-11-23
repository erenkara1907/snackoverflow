//
//  TextFieldModifier.swift
//  SnackOverFlow
//
//  Created by Eren Kara on 23.11.2022.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 2.0))
            .foregroundColor(.colorKarl)
    }
}
