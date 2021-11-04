//
//  MessageColorViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class MessageColorViewController: BaseViewController, ColorPickerDelegate {
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbMessage.text = message.text
        lbMessage.textColor = message.textColor
        lbMessage.backgroundColor = message.backgroundColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! ScreenColorViewController
        
        viewController.message = message
    }
    
    func applyColor(_ color: UIColor) {
        lbMessage.backgroundColor = color
        message.backgroundColor = color
    }
    
}

