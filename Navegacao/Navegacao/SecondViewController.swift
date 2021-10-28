//
//  SecondViewController.swift
//  Navegacao
//
//  Created by Giovanni Vicentin Moratto on 28/10/21.
//  Copyright © 2021 Giovanni Vicentin Moratto. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func showFirstScreen(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func showThirdScreen(_ sender: Any) {
        performSegue(withIdentifier: "toTerceiraView", sender: nil)
    }
}
