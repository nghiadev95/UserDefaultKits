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

