//
//  ViewController.swift
//  Navegacao
//
//  Created by Giovanni Vicentin Moratto on 28/10/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showSecondScreen(_ sender: Any) {
        performSegue(withIdentifier: "toSegundaView", sender: nil)
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        performSegue(withIdentifier: "toSegundaView", sender: nil)
//    }
    
    @IBAction func unwindFirstScreen(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        
    }
    
}

