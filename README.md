<p align="center">
<img src="https://raw.githubusercontent.com/muhasturk/BMHCrypto/master/res/BMHCrypto.png" alt="BMHCrypto" title="BMHCrypto" width="100"/>
</p>

<p align="center">
<a href=""><img src="https://img.shields.io/badge/BMH-Crypto-red"></a>
<a href=""><img src="https://img.shields.io/badge/platforms-iOS%20%7C%20tvOS%20%7C%20macOS%20%7C%20watchOS%20%7C%20Linux-lightgrey.svg"></a>
<br/>
<a href="https://swift.org/package-manager/"><img src="https://img.shields.io/badge/SPM-Compatible-brightgreen.svg?style=flat"></a>
<a href="https://swift.org"><img src="https://img.shields.io/badge/Swift-5.2-orange.svg"></a>
<a href="https://developer.apple.com/xcode"><img src="https://img.shields.io/badge/Xcode-11.4-blue.svg"></a>
<a href="https://raw.githubusercontent.com/muhasturk/BMHCrypto/master/LICENSE"><img src="https://img.shields.io/badge/License-MIT-green"></a>
</p>

# BMHCrypto

BMHCrypto is a pure Swift packages built on CryptoKit, adds useful extensions and ready to use.

### Why?
Simplify usage of cryptographic operation such as hashing, encryption / decryption. Pure Swift, I am not gonna reinvent the wheel, package always will be based on CryptoKit or whatever released by Apple.

## 📋 Requirements

- **iOS** 13.0+ / **tvOS** 13.0+ / **watchOS** 6.0+ / **macOS** 10.15+
- Swift 5.0+

## 📲 Installation

<details>
<summary>Swift Package Manager</summary>
</br>

#### Xcode Project
<a href="https://swift.org/package-manager">Swift Package Manager</a> is built into new versions of Xcode. To install `BMHCrypto` with SPM:

- Open your project in Xcode

- Click "File" -> "Swift Packages" -> "Add Package Dependency..."

- Paste the following URL: 

`https://github.com/muhasturk/BMHCrypto.git`

- Click "Next" -> "Next" -> "Finish"

#### As Dependecy
<p>You can use <a href="https://swift.org/package-manager">The Swift Package Manager</a> to install <code>BMHCrypto</code> by adding the proper description to your <code>Package.swift</code> file:</p>

```swift
import PackageDescription

let package = Package(
    name: "YOUR_PROJECT_NAME",
    targets: [],
    dependencies: [
        .package(url: "https://github.com/muhasturk/BMHCrypto.git", from: "0.1.0")
    ]
)
```

<p>Next, add <code>BMHCrypto</code> to your targets dependencies like so:</p>

```swift
.target(
    name: "YOUR_TARGET_NAME",
    dependencies: [
        "BMHCrypto",
    ]
),
```

<p>Then run <code>swift package update</code>.</p>
</details>

## 🎁 Features

- Insecure Hash
    - [x] MD5
    - [x] SHA1
    > **_Important:_**  These algorithms aren’t considered cryptographically secure, but are provided for backward compatibility with older services that require them. For new services, avoid these algorithms.

- Cryptographically Secure Hashes
    - [x] SHA256
    - [x] SHA384
    - [x] SHA512

- Ciphers
    - [x] AES
    - [x] ChaChaPoly

- Message Authentication Codes
    - [ ] HMAC
    - [x] SymmetricKey

- [ ] Public-Key Cryptography

## 🔥 Usage
Do not forget to import
```swift
import BMHCrypto
```
### Hashing

```swift
// Anything That Conforms DataProtocol
let plainText = "BMH"
```

```swift
// Returns String Representation
plainText.md5
plainText.sha1
plainText.sha256
plainText.sha384
plainText.sha512
```

### Ciphers

- ChaChaPoly
```swift
// Share Same Key
let key = SymmetricKey(size: .bits256) 

// Plain Data Could Be Anything
let data = Data()

// Encrypt
let encrypted = data.encryptChaChaPoly(with: key)

// Decrypt
let decrypted = encrypted.decryptChaChaPoly(with: key)
```

- AES
```swift
// Share Same Key
let key = SymmetricKey(size: .bits256) 

// Plain Data Could Be Anything
let data = Data()

// Encrypt
let encrypted = data.encryptAES(with: key)

// Decrypt
let decrypted = encrypted?.decryptAES(with: key)
```

### Sharing Key
```swift
let key = SymmetricKey(size: .bits256) 

// Shareable String Key
let savedKey = key.base64EncodedString

// Ready to Use SymmetricKey
let convertedKey = savedKey.asSymmetricKey
```

## 👨🏻‍💻 Author
Mustafa Hasturk
📧 mustafa[at]hasturk.dev

## ❤️ Contributing
Bug reports and pull requests are welcome.

## 👮🏻‍♂️ License

BMHCrypto is released under the MIT license. See [LICENSE](https://github.com/muhasturk/BMHCrypto/blob/master/LICENSE) for more information.
