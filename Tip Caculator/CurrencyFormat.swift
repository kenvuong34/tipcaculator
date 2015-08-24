//
//  CurrencyFormat.swift
//  Tip Caculator
//
//  Created by P5mini 2 on 8/24/15.
//  Copyright (c) 2015 Hien VH. All rights reserved.
//

import Foundation

class CurrencyFormatter: NSNumberFormatter {
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init() {
        super.init()
        self.locale = NSLocale.currentLocale()
        self.maximumFractionDigits = 2
        self.minimumFractionDigits = 2
        self.alwaysShowsDecimalSeparator = true
        self.numberStyle = .CurrencyStyle
    }
    
    // Swift 1.2 or above
    //  static let sharedInstance = CurrencyFormatter()
    class var sharedInstance: CurrencyFormatter {
        struct Static {
            static let instance = CurrencyFormatter()
        }
        return Static.instance
    }
}