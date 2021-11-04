//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Giovanni Vicentin Moratto on 03/11/21.
//  Copyright © 2021 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    // MARK: - Attributes
    
    @IBOutlet weak var lbMessage: UILabel!
    
    var message: Message!
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeColor(_ sender: UIButton) {
        if let reference = self as? ColorPickerDelegate {
            let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
            
            colorPicker.modalPresentationStyle = .overCurrentContext
            colorPicker.delegate = reference
            present(colorPicker, animated: true, completion: nil)
        }
    }

}
