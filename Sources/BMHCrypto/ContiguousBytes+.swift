//
//  File.swift
//  
//
//  Created by Mustafa Hastürk on 24.04.2020.
//

#if canImport(CryptoKit) && canImport(Foundation)
import Foundation
import CryptoKit

public extension ContiguousBytes {
    var base64EncodedString: String {
        return self.withUnsafeBytes { Data(Array($0)).base64EncodedString() }
    }

    var data: Data {
        return self.withUnsafeBytes { Data($0) }
    }

    var byteArray: [UInt8] {
        return self.withUnsafeBytes { Array($0) }
    }
}

public extension String {
    var asSymmetricKey: SymmetricKey? {
        guard let keyData = Data(base64Encoded: self) else { return nil }
        return SymmetricKey(data: keyData)
    }
}
#endif
