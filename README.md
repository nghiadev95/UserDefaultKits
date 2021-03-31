[![Build Status](https://github.com/quangnghiadev/UserDefaultKits/workflows/CI/badge.svg?branch=master)](https://github.com/quangnghiadev/UserDefaultKits/actions)
[![SPM compatible](https://img.shields.io/badge/SPM-Compatible-brightgreen.svg?style=flat)](https://swift.org/package-manager/)
[![Swift](https://img.shields.io/badge/Swift-5.3-orange.svg)](https://swift.org)
[![Xcode](https://img.shields.io/badge/Xcode-11.6-blue.svg)](https://developer.apple.com/xcode)
[![MIT](https://img.shields.io/badge/License-MIT-red.svg)](https://opensource.org/licenses/MIT)

# UserDefaultKits

**UserDefaultKits** Property Wrapper of User Default for saving custom Codable object / variable

## Installation

### Swift Package Manager
You can use The Swift Package Manager to install UserDefaultKits by adding https://github.com/quangnghiadev/UserDefaultKits.git to Swift Package of your XCode project


## Usage

```swift
/// Saving primitive data type
@UserDefaultVariable(key: "accessToken", defaultValue: nil)
var accessToken: String?

/// Saving custom Codable object
@UserDefaultObject(key: "user")
var user: UserProfile?
```

## License

- UserDefaultKits is released under the MIT license. See [LICENSE](https://github.com/nghiadev95/UserDefaultKits/blob/master/LICENSE) for more information.

