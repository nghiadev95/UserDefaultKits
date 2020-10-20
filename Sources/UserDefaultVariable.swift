//
//  UserDefaultVariable.swift
//
//
//  Created by Nghia Nguyen on 4/24/20.
//

import Foundation

/// Property Wrapper of User Default for saving primitive data type

@propertyWrapper
public struct UserDefaultVariable<T> {
    private let key: String
    private let defaultValue: T

    public init(key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }

    public var wrappedValue: T {
        get {
            // Read value from UserDefaults
            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }
        set {
            // Set value to UserDefaults
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}
