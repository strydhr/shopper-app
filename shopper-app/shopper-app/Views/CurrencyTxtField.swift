//
//  CurrencyTxtField.swift
//  shopper-app
//
//  Created by Satyia Anand on 24/01/2018.
//  Copyright © 2018 Satyia Anand. All rights reserved.
//

import UIKit

class CurrencyTxtField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        
        
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)])
            
            //string:placeholder! CAN be forced unwrapped because of the initializer above(if statement)
            
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }
     
    }

}
