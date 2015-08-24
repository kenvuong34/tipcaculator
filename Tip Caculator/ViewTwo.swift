//
//  ViewTwo.swift
//  Tip Caculator
//
//  Created by P5mini 2 on 8/24/15.
//  Copyright (c) 2015 Hien VH. All rights reserved.
//

import Foundation
import UIKit

class ViewTwo: UIViewController {
    
    let userDefault = NSUserDefaults.standardUserDefaults()
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func onChanged(sender: AnyObject) {
        var tipNo = tipControl.selectedSegmentIndex
        userDefault.setInteger(tipNo, forKey: "tipValue")
        userDefault.synchronize()

    }
  
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tipControl.selectedSegmentIndex = userDefault.integerForKey("tipValue")
        
    }
}