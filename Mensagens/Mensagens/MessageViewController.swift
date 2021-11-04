//
//  ViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class MessageViewController: BaseViewController, ColorPickerDelegate, UITextFieldDelegate {

    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        message = Message()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! MessageColorViewController
        
        viewController.message = message
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        message.text = textField.text!
        lbMessage.text = textField.text!
        textField.resignFirstResponder()
        return true
    }
    
    func applyColor(_ color: UIColor) {
        lbMessage.textColor = color
        message.textColor = color
    }
    
}
