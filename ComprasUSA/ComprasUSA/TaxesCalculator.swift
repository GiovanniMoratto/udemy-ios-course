//
//  TaxesCalculator.swift
//  ComprasUSA
//
//  Created by Giovanni Vicentin Moratto on 08/11/21.
//  Copyright © 2021 Giovanni Vicentin Moratto. All rights reserved.
//

import Foundation

class TaxesCalculator {
    
    // MARK: - Attributes
    
    static let shared = TaxesCalculator()
    
    var dolar = 5.54
    var iof = 6.38
    var stateTax = 7.80
    var shoppingValue = 0.00
    
    var shoppingValueInReal: Double {
        return shoppingValue * dolar
    }
    
    var stateTaxValue: Double {
        return shoppingValue * stateTax/100
    }
    
    var iofValue: Double {
        return (shoppingValue + stateTax) * iof/100
    }
    
    // MARK: - Initializers (Constructors)
    
    private init() {}
    
    // MARK: - Methods
    
    func calculate(_ usingCreditCard: Bool) -> Double {
        var finalValue = shoppingValue + stateTaxValue
        
        if usingCreditCard {
            finalValue += iofValue
        }
        
        return finalValue
    }
    
}
