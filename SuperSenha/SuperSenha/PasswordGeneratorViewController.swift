//
//  ViewController.swift
//  SuperSenha
//
//  Created by Giovanni Vicentin Moratto on 29/10/21.
//

import UIKit

class PasswordGeneratorViewController: UIViewController {

    // MARK: - Attributes
    
    @IBOutlet weak var tfNumberOfPasswords: UITextField!
    
    @IBOutlet weak var tfNumberOfCharacters: UITextField!
    
    @IBOutlet weak var swLowercase: UISwitch!
    
    @IBOutlet weak var swUppercase: UISwitch!
    
    @IBOutlet weak var swNumbers: UISwitch!
    
    @IBOutlet weak var swSpecialSymbols: UISwitch!
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordListViewController = segue.destination as! PasswordListViewController
        
        if let numberOfPasswords = Int(tfNumberOfPasswords.text!) {
            passwordListViewController.numberOfPasswords = numberOfPasswords
        }
        if let numberOfCharacters = Int(tfNumberOfCharacters.text!) {
            passwordListViewController.numberOfCharacters = numberOfCharacters
        }
        passwordListViewController.useLowercase = swLowercase.isOn
        passwordListViewController.useUppercase = swUppercase.isOn
        passwordListViewController.useNumber = swNumbers.isOn
        passwordListViewController.useSpecialSymbols = swSpecialSymbols.isOn
        
        view.endEditing(true)
            
    }

}

