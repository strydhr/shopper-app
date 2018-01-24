//
//  CurrencyTxtField.swift
//  shopper-app
//
//  Created by Satyia Anand on 24/01/2018.
//  Copyright © 2018 Satyia Anand. All rights reserved.
//

import UIKit
@IBDesignable

class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size:CGFloat = 20
        let currencyLBL = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - (size/2), width: size, height: size))
        currencyLBL.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        currencyLBL.textAlignment = .center
        currencyLBL.textColor = #colorLiteral(red: 1, green: 0.2141343108, blue: 0.2091972541, alpha: 1)
        currencyLBL.layer.cornerRadius = 3.0
        currencyLBL.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLBL.text = formatter.currencySymbol
        addSubview(currencyLBL)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        
     
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        
        
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)])
            
            //string:placeholder! CAN be forced unwrapped because of the initializer above(if statement)
            
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            
        }
        
    }

}
