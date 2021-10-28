//
//  ThirdViewController.swift
//  Navegacao
//
//  Created by Giovanni Vicentin Moratto on 28/10/21.
//  Copyright © 2021 Giovanni Vicentin Moratto. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showSecondScreen(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
