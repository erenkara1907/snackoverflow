//
//  UserCacheItems.swift
//  SnackOverFlow
//
//  Created by Eren Kara on 25.11.2022.
//

import Foundation

enum UserCacheKeys: String {
    case onboard = "onboard"
    
    static let dummyValue = "save_onboard"
}

protocol IUserCache {
    func read(key: UserCacheKeys) -> String
    func save(key: UserCacheKeys, value: String)
    func remove(key: UserCacheKeys)
}

extension IUserCache {
    /// Read user data
    /// - Parameter key: cache item key
    /// - Returns: cached value or empty
    func read(key: UserCacheKeys) -> String {
        let ud = UserDefaults.standard.value(forKey: key.rawValue)
        guard let value = ud as? String else { return "" }
        return value
    }
    
    /// Save user value to cache
    /// - Parameters:
    ///   - key: cache item key
    ///   - value: whatever user value as a string
    func save(key: UserCacheKeys, value: String) {
        UserDefaults.standard.set(value, forKey: key.rawValue)
    }
    
    /// Remove cache item
    /// - Parameter key: cache item key
    func remove(key: UserCacheKeys) {
        UserDefaults.standard.removeObject(forKey: key.rawValue)
    }
}

struct UserDefaultCache: IUserCache {}
