//
//  ResultViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class ResultViewController: BaseViewController {

    // MARK: - Attributes
    
    @IBOutlet weak var viBorder: UIView!
    
    var useWhiteBorder = false
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
        
        lbMessage.text = message.text
        lbMessage.textColor = message.textColor
        lbMessage.backgroundColor = message.backgroundColor
        view.backgroundColor = message.screenColor
        viBorder.backgroundColor = useWhiteBorder ? .white : .clear
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.popViewController(animated: true)
    }
}
