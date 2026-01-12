//
//  BankCoreTests.swift
//  BankCoreTests
//
//  Created by Rahul on 12/01/2026.
//

import XCTest
@testable import BankCore


final class TransferValidatorTests: XCTestCase {

    var validator: TransferValidator!

    override func setUp() {
        super.setUp()
        validator = TransferValidator()
    }

    override func tearDown() {
        validator = nil
        super.tearDown()
    }

    // TEST 1: Should fail if amount is negative
    func test_validate_negativeAmount_returnsFalse() {
        // Given
        let amount = -50.00
        
        // When
        let result = validator.isTransferAllowed(amount: amount)
        
        // Then
        XCTAssertFalse(result, "Transfer should be rejected for negative amounts")
    }
    
    // TEST 2: Should fail if amount is zero
    func test_validate_zeroAmount_returnsFalse() {
        let result = validator.isTransferAllowed(amount: 0.00)
        XCTAssertFalse(result, "Transfer should be rejected for zero amount")
    }

    // TEST 3: Should pass if amount is within limit
    func test_validate_validAmount_returnsTrue() {
        let result = validator.isTransferAllowed(amount: 100.00)
        XCTAssertTrue(result, "Transfer should be accepted for valid positive amounts")
    }
    
    // TEST 4: Should fail if amount is over £10,000 limit
    func test_validate_amountOverLimit_returnsFalse() {
        let result = validator.isTransferAllowed(amount: 10001.00)
        XCTAssertFalse(result, "Transfer should be rejected if over daily limit")
    }
}
