//
//  UIViewControllerExtension.swift
//  ComprasUSA
//
//  Created by Giovanni Vicentin Moratto on 08/11/21.
//  Copyright © 2021 Giovanni Vicentin Moratto. All rights reserved.
//

import UIKit

extension UIViewController {
    
    var tc: TaxesCalculator {
        return TaxesCalculator.shared
    }
    
}
