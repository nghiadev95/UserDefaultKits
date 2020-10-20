//
//  UserDefaultObject.swift
//
//
//  Created by Nghia Nguyen on 4/24/20.
//

import Foundation

/// Property Wrapper of User Default for saving custom Codable object

@propertyWrapper
public struct UserDefaultObject<T: Codable> {
    private let key: String

    public init(key: String) {
        self.key = key
    }

    public var wrappedValue: T? {
        get {
            // Read value from UserDefaults
            guard let data = UserDefaults.standard.object(forKey: key) as? Data else {
                // Return defaultValue when no data in UserDefaults
                return nil
            }
            // Convert data to the desire data type
            let value = try? JSONDecoder().decode(T.self, from: data)
            return value
        }
        set {
            if newValue == nil {
                UserDefaults.standard.set(nil, forKey: key)
            } else {
                // Convert newValue to data
                let data = try? JSONEncoder().encode(newValue)
                // Set value to UserDefaults
                UserDefaults.standard.set(data, forKey: key)
            }
        }
    }
}
