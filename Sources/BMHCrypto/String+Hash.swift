//
//  File.swift
//  
//
//  Created by Mustafa Hastürk on 24.04.2020.
//

#if canImport(Foundation)
import Foundation
public extension String {
    
    var md5: String {
        return Data(self.utf8).md5
    }

    var sha1: String {
        return Data(self.utf8).sha1
    }

    var sha256: String {
        return Data(self.utf8).sha256
    }

    var sha384: Self {
        return Data(self.utf8).sha384
    }

    var sha512: Self {
        return Data(self.utf8).sha512
    }

}
#endif
