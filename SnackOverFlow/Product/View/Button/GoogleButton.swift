//
//  GoogleButton.swift
//  SnackOverFlow
//
//  Created by Eren Kara on 22.11.2022.
//

import SwiftUI

struct GoogleButton: View {
    var onTap: () -> Void
    
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Image(IconItems.Social.google.rawValue)
                    .padding(.trailing, 10.0)
                Text(LocaleKeys.Authentication.google.rawValue.locale())
                Spacer()
            } // HStack
            .tint(.gray)
            .font(.system(size: FontSizes.headline, weight: .bold))
            .padding(.all, 15.0)
        } // Button
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(Color.white)
        .cornerRadius(RadiusItems.radius)
    } // Vi
}

struct GoogleButton_Previews: PreviewProvider {
    static var previews: some View { GoogleButton {} }
}
