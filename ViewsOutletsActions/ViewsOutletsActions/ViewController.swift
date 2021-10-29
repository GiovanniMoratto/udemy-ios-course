//
//  ViewController.swift
//  ViewsOutletsActions
//
//  Created by Giovanni Vicentin Moratto on 29/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var myView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func runSomething(_ sender: UIButton) {
        print("runSomething")
    }
    
    
    @IBAction func doSomething(_ sender: Any, forEvent event: UIEvent) {
        print("doSomething")
    }
    
    
}

