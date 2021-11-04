//
//  ViewController.swift
//  TextFieldWithDelegate
//
//  Created by Giovanni Vicentin Moratto on 03/11/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfName.delegate = self
        tfEmail.delegate = self
    }

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == tfName {
            // Foco
            tfEmail.becomeFirstResponder()
        }
        
        else if textField == tfEmail {
            tfPassword.becomeFirstResponder()
        }
        
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        return !textField.text!.isEmpty
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
}

