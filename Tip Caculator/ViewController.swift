//
//  ViewController.swift
//  Tip Caculator
//
//  Created by P5mini 2 on 8/24/15.
//  Copyright (c) 2015 Hien VH. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
 
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    var userDefault = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
                
        tipLabel.text = CurrencyFormatter.sharedInstance.stringFromNumber(0)
        totalLabel.text = CurrencyFormatter.sharedInstance.stringFromNumber(0)
        tipControl.selectedSegmentIndex = userDefault.integerForKey("tipValue")
       
        billField.becomeFirstResponder()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var billAmount = (billField.text as NSString).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        println(CurrencyFormatter.sharedInstance.stringFromNumber(tip)!)
        println(CurrencyFormatter.sharedInstance.stringFromNumber(total)!)
        tipLabel.text = CurrencyFormatter.sharedInstance.stringFromNumber(tip)
        totalLabel.text = CurrencyFormatter.sharedInstance.stringFromNumber(total)
        
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    override func viewWillAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        tipControl.selectedSegmentIndex = userDefault.integerForKey("tipValue")
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidDisappear(animated)
        println("View did appear")
    }
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        println("View will Disappear")
    }
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        println("View did Disappear")
    }
}

