import XCTest
@testable import BMHCrypto
import CryptoKit

final class HashTests: XCTestCase {

    let plainText = "BMH"

    func testMD5() {
        XCTAssertEqual(plainText.md5, "8f92eb7991b8bc6406258ee7905c489c")
    }

    func testSHA1() {
        XCTAssertEqual(plainText.sha1, "ea81d1771bc602bb23b0037a205465ec87624864")
    }

    func testSHA256() {
        XCTAssertEqual(plainText.sha256, "ba8659c4732b25457ad475dc8b7f2781a7602ae944b4e40ad20542dc20e02566")
    }

    func testSHA384() {
        XCTAssertEqual(plainText.sha384, "883bf81a1857d5a12cf54dbebccb83d4289d9fa369cc6913be8d3a8bde252a86e64a3ba7ad253b3a87687998a73c021a")
    }

    func testSHA512() {
        XCTAssertEqual(plainText.sha512, "05909bfa76a1a96f0c6a24efde62fd3375eace63013113cb51c10331b1f951a559bf26626a6afdc8d9a222183585dee27a1c5db73d2a776beab409c70af23444")
    }

}
