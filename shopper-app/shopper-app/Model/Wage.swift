//
//  Wage.swift
//  shopper-app
//
//  Created by Satyia Anand on 24/01/2018.
//  Copyright © 2018 Satyia Anand. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage:Double, andPrice price: Double) -> Int{
        // print("\(Int(ceil(price/wage)))")
        return Int(ceil(price/wage))
    }
}
