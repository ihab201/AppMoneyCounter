//
//  ViewController.swift
//  moneyCounter
//
//  Created by bennoui ihab on 4/11/20.
//  Copyright © 2020 bennoui ihab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var wageBtn: TextVC!
    
    @IBOutlet weak var PriceBtn: TextVC!
    @IBOutlet weak var NbrHoursTXT: UILabel!
    
    @IBOutlet weak var HoursTXT: UILabel!
    override func viewDidLoad() {
          super.viewDidLoad()
        let CalcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        CalcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.404581964, blue: 0.2261790931, alpha: 1)
        CalcBtn.setTitle("Calculate", for: .normal)
        CalcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        wageBtn.inputAccessoryView = CalcBtn
        PriceBtn.inputAccessoryView = CalcBtn
        HoursTXT.isHidden = true
        NbrHoursTXT.isHidden = true
        
    }
    @objc func calculate(){
        if let wageBtn = wageBtn.text ,let priceBtn = PriceBtn.text {
            if let wage = Double(wageBtn) , let price = Double(priceBtn){
                view.endEditing(true)
                HoursTXT.isHidden = false
                NbrHoursTXT.isHidden = false
                NbrHoursTXT.text = "\(Wage.getHours(ForWage: wage, andPrice: price))"
                
            }
        }
    }

    @IBAction func ClearCalculation(_ sender: Any) {
        HoursTXT.isHidden = true
        NbrHoursTXT.isHidden = true
        wageBtn.text = ""
        PriceBtn.text = ""
    }
}

