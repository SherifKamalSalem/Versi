//
//  RoundedBorderTextField.swift
//  Versi
//
//  Created by Sherif Kamal on 12/21/18.
//  Copyright © 2018 Sherif Kamal. All rights reserved.
//

import UIKit

class RoundedBorderTextField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        layer.borderColor = #colorLiteral(red: 0.186604999, green: 0.4929904816, blue: 1, alpha: 1)
        layer.cornerRadius = frame.height / 2
        layer.borderWidth = 3
        let placeholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.2485149311, green: 0.3206811293, blue: 0.6138852835, alpha: 1)])
        attributedPlaceholder = placeholder
    }
}
