//
//  ViewController.swift
//  shopper-app
//
//  Created by Satyia Anand on 24/01/2018.
//  Copyright © 2018 Satyia Anand. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calcBtn.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calulate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
    }

    @objc func calulate(){
        
   
    }

}

