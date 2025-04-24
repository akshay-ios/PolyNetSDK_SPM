# PolyNetSDK
PolyNetSDK xcframework integration guide
This project is the PolyNet SDK for iOS and tvOS. It is written in Swift 5 and supports Swift 6.

# Platforms Requirements
The PolyNet SDK is compatible with iOS 12.0 or higher and tvOS 12.0 or higher. macOS is not supported by now.
# Versions
The PolyNetSDK conforms to the Semantic Versioning 2.0.0. The version 5.0.0 is the first to use this standard competely, because version 4 used a partial of this.

# Targets
PolyNetSDK_iOS: This is the main target of the iOS Dynamic Framework, used in development.

PolyNetSDK_iOS_Test: This target is needed for iOS unit testing.

PolyNetSDK_tvOS: This is the main target of the tvOS Dynamic Framework, used in development.

PolyNetSDK_tvOS_Test: This target is needed for tvOS unit testing.

PolyNetSDK_XCFramework: This target is used to build the XCFramework.
# Swift ABI and Module Stability
The PolyNet SDK is build with BUILD_FOR_DISTRIBUTION to YES, so the framework is forward compatible with Swift compilers. Backwards compatibility with older Swift version compilers are not guarantee.
# XCFramework
The project uses the target PolyNetSDK_XCFramework to build an xcframework with the following architectures:

arm64 iOS devices.
x86_64 for iOS simulators.
arm64 for tvOS devices.
x86_64 for tvOS simulators.
arm64 for iOS simulators are supported now and for tvOS simulators (simulators running on M1 & M2 silicon) are supported only through Rosetta.


Requirements
iOS 12.0+ and tvOS 12.0+

Swift 5.6+

Xcode 13+ (for Swift Package Manager integration)

Installation
Using Swift Package Manager
To add PolyNetSDK to your project using Swift Package Manager, add the following dependency in your Package.swift:

swift
Copy
Edit
.package(url: "https://your-git-provider.com/your-org/PolyNetSPM.git", from: "5.2.0")
Alternatively, you can add it through Xcode:

Open your Xcode project.

Go to File > Swift Packages > Add Package Dependency.

Enter the URL for the Git repository:
https://your-git-provider.com/your-org/PolyNetSPM.git

Choose the version 5.2.0 or higher.

Using Nexus (Binary Integration)
The SDK is available as a precompiled binary, so it’s integrated through the Package.swift as a binary target. You can use the following URL to access the SDK:

swift
Copy
Edit
.binaryTarget(
    name: "PolyNetSDK",
    url: "https://your-nexus-domain.com/repository/your-private-repo/PolyNetSDK.xcframework.zip",
    checksum: "9cb83606e31349d63703e583aee92c9a3c1028f534d700f66b40bb9b37ad70d6"
)
Usage
Example
Here’s how you can import and use PolyNetSDK in your project:

swift
Copy
Edit
import PolyNetSDK
import SwiftProtobuf
import Starscream

// Example usage of the SDK
func setupWebRTC() {
    // Initialize WebRTC client
    let client = WebRTCClient()
    client.setupConnection()

    // Use Starscream for WebSocket communication
    let socket = WebSocket(url: URL(string: "wss://example.com/socket")!)
    socket.connect()

    // Handle Protobuf data
    let protobufMessage = SomeMessage()
    let data = try! protobufMessage.serializedData()
}
Documentation
For more details on integrating and using the PolyNetSDK in your project, please refer to the API documentation.

# License
This SDK is distributed under the MIT License.

🔄 Final Notes
Be sure to update the Nexus repository URL and Git repository URL as needed.

Feel free to extend this README.md with more advanced usage examples, troubleshooting tips, and API docs if necessary.
