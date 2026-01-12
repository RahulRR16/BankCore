//
//  TransferValidator.swift
//  BankCore
//
//  Created by Rahul on 12/01/2026.
//

import Foundation

class TransferValidator {
    
    let dailyLimit = 10000.00
    
    func isTransferAllowed(amount: Double) -> Bool {
        // Business Rule 1: Must be positive and not zero
        guard amount > 0 else {
            return false
        }
        
        // Business Rule 2: Must be under daily limit
        guard amount <= dailyLimit else {
            return false
        }
        
        return true
    }
}
