# PolyNetSDK_SPM
PolyNetSDK xcframework integration guide

PolyNetSDK is a Swift package that provides advanced networking functionality for iOS and tvOS platforms. This SDK is designed to facilitate WebRTC communication and includes features such as:

WebRTC integration

Protobuf support

WebSocket support with Starscream

Features
WebRTC Support: Provides the foundation for real-time communication.

Protobuf: For efficient serialization of structured data.

WebSockets (via Starscream): Used for real-time, bidirectional communication.

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

License
This SDK is distributed under the MIT License.

🔄 Final Notes
Be sure to update the Nexus repository URL and Git repository URL as needed.

Feel free to extend this README.md with more advanced usage examples, troubleshooting tips, and API docs if necessary.
