//
//  ViewController.swift
//  CicloDeVida
//
//  Created by Giovanni Vicentin Moratto on 28/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Método - view - Tela 1: viewDidLoad")
        label.text = "digite o seu nome"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Método - view - Tela 1: viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Método - view - Tela 1: viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Método - view - Tela 1: viewWillDisappear")
        textField.text = ""
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Método - view - Tela 1: viewDidDisappear")
    }


}

