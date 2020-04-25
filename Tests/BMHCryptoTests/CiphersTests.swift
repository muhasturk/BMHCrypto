//
//  File.swift
//  
//
//  Created by Mustafa Hastürk on 24.04.2020.
//

import XCTest
@testable import BMHCrypto
import CryptoKit

final class CiphersTests: XCTestCase {
    private let plainText = "BMHCrypto"
    private let key = SymmetricKey(size: .bits256)

    func testChaChaPoly() {
        let data = Data(plainText.utf8)

        let encrypted = data.encryptChaChaPoly(with: key)

        let generatedKey = key.base64EncodedString.asSymmetricKey
        XCTAssertNotNil(generatedKey)

        let decrypted = encrypted.decryptChaChaPoly(with: generatedKey!)
        XCTAssertEqual(data, decrypted)

        let assumePlain = String(data: decrypted, encoding: .utf8)
        XCTAssertEqual(assumePlain, plainText)
    }

    func testAES() {
        let data = Data(plainText.utf8)

        let encrypted = data.encryptAES(with: key)

        let generatedKey = key.base64EncodedString.asSymmetricKey
        XCTAssertNotNil(generatedKey)

        let decrypted = encrypted?.decryptAES(with: generatedKey!)
        XCTAssertEqual(data, decrypted)
        XCTAssertNotNil(decrypted)

        let assumePlain = String(data: decrypted!, encoding: .utf8)

        XCTAssertEqual(assumePlain, plainText)
    }
}
