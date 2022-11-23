//
//  LoginView.swift
//  SnackOverFlow
//
//  Created by Eren Kara on 23.11.2022.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Spacer()
            ImageItems.Authentication.wolcano.rawValue.image()
            Text(LocaleKeys.Authentication.welcomeBack.rawValue.locale())
                .font(.system(size: FontSizes.title1,weight: .semibold))
            
            AppTextField(title: LocaleKeys.General.emailHint.rawValue, icon: "envelope.fill")
            AppTextFieldSecure(title: LocaleKeys.General.passwordHint.rawValue, icon: "lock.fill")
                .padding(.top, 10.0)
            
            Divider()
                .padding(.vertical, 10.0)
                .padding(.horizontal, 30.0)
            
            NormalButton(onTap: {
                
            }, title: LocaleKeys.Authentication.createAccount.rawValue)
            
            Text(LocaleKeys.Authentication.termsAndCondition.rawValue.locale())
                .environment(\.openURL, OpenURLAction(handler: { url in
                    print(url)
                    return .discarded
                }))
                .padding(.top, 10.0)
                .font(.system(size: FontSizes.caption1, weight: .regular))
                .foregroundColor(.colorGandalf)
                .tint(.colorCornflowerBlue)
            
            Spacer()
        } // VStack
        .padding(.horizontal, 16.0)
    } // View
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

private struct AppTextField: View {
    var title: String
    var icon: String
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.black)
                .frame(width: 20.0, height: 20.0)
            TextField(title.locale(), text: .constant(""))
        } // HStack
        .modifier(TextFieldModifier())
    }
}

private struct AppTextFieldSecure: View {
    var title: String
    var icon: String
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.black)
                .frame(width: 20.0, height: 20.0)
            SecureField(title.locale(), text: .constant(""))
        } // HStack
        .modifier(TextFieldModifier())
    }
}
