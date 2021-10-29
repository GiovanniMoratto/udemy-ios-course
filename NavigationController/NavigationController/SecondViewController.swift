//
//  SecondViewController.swift
//  NavigationController
//
//  Created by Giovanni Vicentin Moratto on 29/10/21.
//  Copyright © 2021 Giovanni Vicentin Moratto. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.setNavigationBarHidden(true, animated: true)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showFirstScreen(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
