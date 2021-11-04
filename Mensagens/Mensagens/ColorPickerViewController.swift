//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by Giovanni Vicentin Moratto on 03/11/21.
//  Copyright © 2021 Eric Brito. All rights reserved.
//

import UIKit

protocol ColorPickerDelegate: AnyObject {
    
    func applyColor(_ color: UIColor)
    
}

class ColorPickerViewController: UIViewController {

    // MARK: - Attributes
    
    @IBOutlet weak var viColor: UIView!
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    
    weak var delegate: ColorPickerDelegate?
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func chooseColor(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        delegate?.applyColor(viColor.backgroundColor!)
    }
    
    @IBAction func changeColor(_ sender: UISlider) {
        viColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
    }
    
    
}
