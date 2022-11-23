//
//  EmailButton.swift
//  SnackOverFlow
//
//  Created by Eren Kara on 22.11.2022.
//

import SwiftUI

struct EmailButton: View {
    var onTap: () -> Void
    
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Spacer()
                Text(LocaleKeys.Authentication.email.rawValue.locale())
                Spacer()
            } // HStack
            .tint(.colorPeach)
            .font(.system(size: FontSizes.headline, weight: .bold))
            .padding(.all, 15.0)
        } // Button
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(.white)
        .cornerRadius(RadiusItems.radius)
    } //
}

struct EmailButton_Previews: PreviewProvider {
    static var previews: some View { EmailButton {} }
}
