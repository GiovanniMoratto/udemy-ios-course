//
//  PasswordListViewController.swift
//  SuperSenha
//
//  Created by Giovanni Vicentin Moratto on 29/10/21.
//  Copyright © 2021 Giovanni Vicentin Moratto. All rights reserved.
//

import UIKit

class PasswordListViewController: UIViewController {
    
    // MARK: - Attributes
    
    @IBOutlet weak var tvPasswords: UITextView!
    
    var numberOfCharacters = 10
    var numberOfPasswords = 1
    var useLowercase: Bool!
    var useUppercase: Bool!
    var useNumber: Bool!
    var useSpecialSymbols: Bool!
    
    var passwordGenerator: PasswordGenerator!
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Total de senhas: \(numberOfPasswords)"
        
        passwordGenerator = PasswordGenerator(numberOfCharacters: numberOfCharacters, useLowercase: useLowercase, useUppercase: useUppercase, useNumber: useNumber, useSpecialSymbols: useSpecialSymbols)
        
        generatePasswords()
    }
    
    private func generatePasswords() {
        tvPasswords.text = String()
        tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        
        let passwords = passwordGenerator.generate(numberOfPasswords)
        
        for password in passwords {
            tvPasswords.text.append(password + "\n\n")
        }
    }
    
    @IBAction func generate(_ sender: UIButton) {
        generatePasswords()
    }
    

}
