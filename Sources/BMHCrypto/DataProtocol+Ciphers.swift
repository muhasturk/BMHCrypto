//
//  File.swift
//  
//
//  Created by Mustafa Hastürk on 24.04.2020.
//

#if canImport(CryptoKit) && canImport(Foundation)
import Foundation
import CryptoKit

public extension DataProtocol {
    func encryptChaChaPoly(with key: SymmetricKey) -> Data {
        let encryptedContent = try! ChaChaPoly.seal(self, using: key).combined
        return encryptedContent
    }

    func decryptChaChaPoly(with key: SymmetricKey) -> Data {
        let sealedBox = try! ChaChaPoly.SealedBox(combined: self)
        let decrypted = try! ChaChaPoly.open(sealedBox, using: key)
        return decrypted
    }

    func encryptAES(with key: SymmetricKey) -> Data? {
        let encryptedContent = try! AES.GCM.seal(self, using: key).combined
        return encryptedContent
    }

    func decryptAES(with key: SymmetricKey) -> Data {
        let sealedBox = try! AES.GCM.SealedBox(combined: self)
        let decrypted = try! AES.GCM.open(sealedBox, using: key)
        return decrypted
    }
}

#endif
