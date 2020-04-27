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
    private let key = SymmetricKey(size: .bits128)
    
    func testSymmetricKey() {
        let savedKey = key.base64EncodedString

        let convertedKey = savedKey.asSymmetricKey
        XCTAssertNotNil(convertedKey)
        XCTAssertEqual(key, convertedKey)
    }

    func testBypeArray() {
        let byteArray = key.byteArray

        let data = Data(byteArray)
        
        let generatedKey = SymmetricKey(data: data)
        XCTAssertEqual(generatedKey, key)
    }

    func testData() {
        let data = key.data

        XCTAssertEqual(data.base64EncodedString(), key.base64EncodedString)
        XCTAssertEqual([UInt8](data), key.byteArray)

        let generatedKey = SymmetricKey(data: data)
        XCTAssertEqual(generatedKey, key)
    }
}
