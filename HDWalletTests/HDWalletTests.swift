import XCTest
import HDWallet

class HDWalletTests: XCTestCase {

    var mnemonic: BTCMnemonic!
    
    override func setUp() {
        super.setUp()
        //        var entropy = Data(count: 32)
        //        // This creates the private key inside a block, result is of internal type ResultType.
        //        // We just need to check if it's 0 to ensure that there were no errors.
        //        let result = entropy.withUnsafeMutableBytes { mutableBytes in
        //            SecRandomCopyBytes(kSecRandomDefault, entropy.count, mutableBytes)
        //        }
        //        guard result == 0 else { fatalError("Failed to randomly generate and copy bytes for entropy generation. SecRandomCopyBytes error code: (\(result)).") }

        let entropy = "123456789012Z456".data(using: .ascii)!
        self.mnemonic = BTCMnemonic(entropy: entropy, password: nil, wordListType: .english)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let words = "couple muscle snack heavy gloom orchard tooth alert crane spider ask horn".components(separatedBy: " ")
        XCTAssertEqual(self.mnemonic.words, words)
    }
}
