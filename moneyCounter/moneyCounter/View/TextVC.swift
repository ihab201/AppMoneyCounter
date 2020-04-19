//
//  TextVC.swift
//  moneyCounter
//
//  Created by bennoui ihab on 4/11/20.
//  Copyright © 2020 bennoui ihab. All rights reserved.
//

import UIKit

@IBDesignable
class TextVC: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height) / 2 - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 0.7499724912)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2015891373, green: 0.2201809883, blue: 0.2420135736, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        CustomView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        CustomView()
    }
    
    func CustomView() {
        backgroundColor = #colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
         textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        clipsToBounds = true 
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor : UIColor.white ])
            attributedPlaceholder = place
    }
}
    
    
}
