//
//  File.swift
//  
//
//  Created by Mustafa Hastürk on 24.04.2020.
//

#if canImport(CryptoKit) && canImport(Foundation)
import Foundation
import CryptoKit

public extension Digest {
    var bytes: [UInt8] { Array(makeIterator()) }
    var data: Data { Data(bytes) }

    var hexStr: String {
        bytes.map { String(format: "%02x", $0) }.joined()
    }
}

#endif
