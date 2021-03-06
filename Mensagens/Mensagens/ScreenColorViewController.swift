//
//  ScreenColorViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class ScreenColorViewController: BaseViewController, ColorPickerDelegate {
    
    // MARK: - Attributes
    
    @IBOutlet weak var viBorder: UIView!
    @IBOutlet weak var swWhiteBorder: UISwitch!
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbMessage.text = message.text
        lbMessage.textColor = message.textColor
        lbMessage.backgroundColor = message.backgroundColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! ResultViewController
        
        viewController.message = message
        viewController.useWhiteBorder = swWhiteBorder.isOn
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    @IBAction func changeBorder(_ sender: UISwitch) {
        
        viBorder.backgroundColor = sender.isOn ? .white : .clear
    }
    
    func applyColor(_ color: UIColor) {
        view.backgroundColor = color
        message.screenColor = color
    }
    
}

