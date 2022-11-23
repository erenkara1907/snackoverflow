//
//  NormalButton.swift
//  SnackOverFlow
//
//  Created by Eren Kara on 22.11.2022.
//

import SwiftUI

/// It's a normal button for project
///
/// [onTap] will return user interaction
/// [title] its showes button name
struct NormalButton: View {
    var onTap: () -> Void
    var title: String
    
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Spacer()
                Text(title.locale())
                Spacer()
            } // HStack
            .tint(.white)
            .font(.system(size: FontSizes.headline, weight: .bold))
            .padding(.all, 15.0)
        } // Button
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(Color.colorPeach)
        .cornerRadius(RadiusItems.radius)
    } //
}

struct NormalButton_Previews: PreviewProvider {
    static var previews: some View { NormalButton(onTap: {}, title: "Button") }
}
