//
//  PasswordGenerator.swift
//  SuperSenha
//
//  Created by Giovanni Vicentin Moratto on 29/10/21.
//  Copyright © 2021 Giovanni Vicentin Moratto. All rights reserved.
//

import Foundation

class PasswordGenerator {
    
    // MARK: - Attributes
    
    var numberOfCharacters: Int
    var useLowercase: Bool
    var useUppercase: Bool
    var useNumber: Bool
    var useSpecialSymbols: Bool
    
    var passwords: [String] = []
    
    private let letters = "abcdefghijklmnopqrstuvwxyz"
    private let specialSymbols = "!@#$%^&*()_-+=~´`|[{}]:;?.,"
    private let numbers = "0123456789"
    
    // MARK: - Initializers (Constructors)
    
    init(numberOfCharacters: Int, useLowercase: Bool, useUppercase: Bool, useNumber: Bool, useSpecialSymbols: Bool) {
        
        var rangeOfCharacters = min(numberOfCharacters, 16)
        rangeOfCharacters = max(rangeOfCharacters, 1)
        
        self.numberOfCharacters = rangeOfCharacters
        self.useLowercase = useLowercase
        self.useUppercase = useUppercase
        self.useNumber = useNumber
        self.useSpecialSymbols = useSpecialSymbols
    }
    
    // MARK: - Methods
    
    func generate(_ total: Int) -> [String] {
        passwords.removeAll()
        
        var passwordType = String()
        
        if self.useLowercase {
            passwordType += letters
        }
        if self.useUppercase {
            passwordType += letters.uppercased()
        }
        if self.useNumber {
            passwordType += numbers
        }
        if self.useSpecialSymbols {
            passwordType += specialSymbols
        }
        
        let passwordTypeArray = Array(passwordType)
        
        while passwords.count < total {
            var password = String()
            
            for _ in 1...numberOfCharacters {
                let index = Int(arc4random_uniform(UInt32(passwordTypeArray.count)))
                password += String(passwordTypeArray[index])
            }
            passwords.append(password)
        }
        
        
        return passwords
    }
    
}
