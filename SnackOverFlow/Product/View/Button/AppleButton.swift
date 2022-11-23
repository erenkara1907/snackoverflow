//
//  AppleButton.swift
//  SnackOverFlow
//
//  Created by Eren Kara on 22.11.2022.
//

import SwiftUI

struct AppleButton: View {
    var onTap: () -> Void
    
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Image(IconItems.Social.apple.rawValue)
                    .padding(.trailing, 10.0)
                Text(LocaleKeys.Authentication.apple.rawValue.locale())
                Spacer()
            } // HStack
            .tint(.white)
            .font(.system(size: FontSizes.headline, weight: .bold))
            .padding(.all, 15.0)
        } // Button
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(.black)
        .cornerRadius(RadiusItems.radius)
    } //
}

struct AppleButton_Previews: PreviewProvider {
    static var previews: some View { AppleButton {} }
}
