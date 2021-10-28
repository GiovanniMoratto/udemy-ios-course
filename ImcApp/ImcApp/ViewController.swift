//
//  ViewController.swift
//  ImcApp
//
//  Created by Giovanni Vicentin Moratto on 27/10/21.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Attributes
    
    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var tfHeight: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var ivResult: UIImageView!
    @IBOutlet weak var viResult: UIView!
    
    var imc = 0.0
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func calculate(_ sender: Any) {
        guard let textWeigth = tfWeight.text else { return }
        guard let weight = Double(textWeigth) else { return }
        
        guard let textHeigth = tfHeight.text else { return }
        guard let height = Double(textHeigth) else { return }
        
        imc = weight / pow(height, 2)
        
        showResults()
    }
    
    func showResults() {
        var result = String()
        var image = String()
        
        switch imc {
            case 0..<16:
                result = "Magreza"
                image = "abaixo"
            case 16..<18.5:
                result = "Abaixo do peso"
                image = "abaixo"
            case 18.5..<25:
                result = "Peso ideal"
                image = "ideal"
            case 25..<30:
                result = "Sobrepeso"
                image = "sobre"
            default:
                result = "Obesidade"
                image = "obesidade"
        }
        lbResult.text = "\(Int(imc)): \(result)"
        ivResult.image = UIImage(named: image)
        viResult.isHidden = false
        view.endEditing(true)
    }


}

