//
//  LocaleKeys.swift
//  SnackOverFlow
//
//  Created by Eren Kara on 22.11.2022.
//

import SwiftUI

struct LocaleKeys {
    enum Authentication: String {
        case facebook = "signInFacebook"
        case google = "signInGoogle"
        case apple = "signInApple"
        case email = "signUpWithEmail"
        case welcomeBack = "welcomeBack"
        case createAccount = "createAccount"
        case termsAndCondition = "termsAndCondition"
    }
    
    enum General: String {
        case emailHint = "emailHint"
        case passwordHint = "passwordHint"
    }
    
    enum Button: String {
        case getStarted = "getStarted"
    }
}

extension String {
    /// It localize any string from Localizabl.string
    /// - Returns: Localized vvalue
    func locale() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}
