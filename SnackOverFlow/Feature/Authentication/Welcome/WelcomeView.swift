//
//  WelcomeView.swift
//  SnackOverFlow
//
//  Created by Eren Kara on 22.11.2022.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            
            // MARK: - Background
            Image(ImageItems.Authentication.juice.rawValue).resizable()
            Color.colorBlack.opacity(0.6)
            
            // MARK: - Front
            BodyView()
            
        } // ZStack
        .ignoresSafeArea(.container)
    } // Body
}
  
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
 }

private struct BodyView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                
                Spacer()
                Image(IconItems.Core.appLogo.rawValue)
                Spacer()
                FacebookButton {}
                GoogleButton {}
                AppleButton {}
                
                Divider()
                    .background(Color.colorPeach)
                    .frame(height: DividerViewSize.normal)
                    .padding(.all, 20.0)
                
                EmailButton { }
                Spacer()
                    .frame(width: geometry.dynamicWidth(width: 0.6) ,height: geometry.dynamicHeight(height: 0.05))
            } // VStack
            .padding(10.0)
        } // GeometryReader
    }
}


