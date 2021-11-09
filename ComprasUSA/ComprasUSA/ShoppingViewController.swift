//
//  ViewController.swift
//  ComprasUSA
//
//  Created by Giovanni Vicentin Moratto on 05/11/21.
//

import UIKit

class ShoppingViewController: UIViewController {

    // MARK: - Attributes
    
    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var lbRealDescription: UILabel!
    @IBOutlet weak var lbReal: UILabel!
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setAmmount()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tfDolar.resignFirstResponder()
        setAmmount()
    }
    
    func setAmmount() {
        guard let tfDolarString = tfDolar.text else { return }
        let tfDolarDouble = Double(tfDolarString)
        guard let dolar = tfDolarDouble else { return }
        
        tc.dolar = dolar
    }
    
}

