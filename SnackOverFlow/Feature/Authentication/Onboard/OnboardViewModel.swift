//
//  OnboardViewModel.swift
//  SnackOverFlow
//
//  Created by Eren Kara on 25.11.2022.
//

import Foundation

final class OnboardViewModel: ObservableObject {
    @Published var currentIndex: Int = 0
    @Published var isWelcomeRedirect: Bool = false
    
    private let cache: IUserCache = UserDefaultCache()
    
    private func isUserFirstLogin() -> Bool {
        return cache.read(key: .onboard).isEmpty
    }
    
    func checkUserFirstTime() {
        guard !isUserFirstLogin() else {
            updateCacheFirstLogin()
            return
        }
        redirectToWelcome()
    }
    
    func saveUserLoginAndRedirect() {
        updateCacheFirstLogin()
        redirectToWelcome()
    }
    
    private func redirectToWelcome() {
        isWelcomeRedirect = true
    }
    
    private func updateCacheFirstLogin() {
        cache.save(key: .onboard, value: UserCacheKeys.dummyValue)
    }
    
    private func rmoveCacheFirstLogin() {
        cache.remove(key: .onboard)
    }
}
