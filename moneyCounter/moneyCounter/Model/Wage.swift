//
//  Wage.swift
//  moneyCounter
//
//  Created by bennoui ihab on 4/12/20.
//  Copyright © 2020 bennoui ihab. All rights reserved.
//

import Foundation
class Wage {
    class func getHours (ForWage wage : Double , andPrice price : Double) -> Int{
        return Int(ceil(price / wage))
    }
}
