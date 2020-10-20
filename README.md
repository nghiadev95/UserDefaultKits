[![Build Status](https://github.com/nghiadev95/UserDefaultKits/workflows/Swift/badge.svg?branch=master)](https://github.com/nghiadev95/UserDefaultKits/actions)
[![SPM compatible](https://img.shields.io/badge/SPM-Compatible-brightgreen.svg?style=flat)](https://swift.org/package-manager/)
[![Swift](https://img.shields.io/badge/Swift-5.3-orange.svg)](https://swift.org)
[![Xcode](https://img.shields.io/badge/Xcode-11.6-blue.svg)](https://developer.apple.com/xcode)
[![MIT](https://img.shields.io/badge/License-MIT-red.svg)](https://opensource.org/licenses/MIT)

**UserDefaultKits** Property Wrapper of User Default for saving custom Codable object / variable

## Installation

### Swift Package Manager
You can use The Swift Package Manager to install UserDefaultKits by adding the proper description to your `Package.swift` 

```swift
import PackageDescription

let package = Package(
    name: "YOUR_PROJECT_NAME",
    targets: [],
    dependencies: [
        .package(url: "https://github.com/nghiadev95/UserDefaultKits.git", from: "1.0.0")
    ]
)
```


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

