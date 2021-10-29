//
//  ViewController.swift
//  NavigationController
//
//  Created by Giovanni Vicentin Moratto on 29/10/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    @IBAction func showSecondScreen(_ sender: UIButton) {
        performSegue(withIdentifier: "toSecondScreen", sender: nil)
    }
    
}

