//
//  File.swift
//  
//
//  Created by Mustafa Hastürk on 24.04.2020.
//

import XCTest
@testable import BMHCrypto
import CryptoKit

final class SymmetricKeyTests: XCTestCase {
    func testSymmetricKey() {
        let key = SymmetricKey(size: .bits128)

        let savedKey = key.base64EncodedString

        let convertedKey = savedKey.asSymmetricKey
        XCTAssertNotNil(convertedKey)
        XCTAssertEqual(key, convertedKey)
    }
}
