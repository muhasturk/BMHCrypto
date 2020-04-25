#if canImport(CryptoKit) && canImport(Foundation)
import Foundation
import CryptoKit

public extension DataProtocol {
    var md5: String {
        return Insecure.MD5.hash(data: self).hexStr
    }

    var sha1: String {
        return Insecure.SHA1.hash(data: self).hexStr
    }

    var sha256: String {
        return SHA256.hash(data: self).hexStr
    }

    var sha384: String {
        return SHA384.hash(data: self).hexStr
    }

    var sha512: String {
        return SHA512.hash(data: self).hexStr
    }
}
#endif
