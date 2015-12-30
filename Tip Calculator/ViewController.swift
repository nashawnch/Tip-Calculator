//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Nashawn Chery on 12/14/15.
//  Copyright © 2015 Cereza Enterprises. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "0.00"
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        
        var tipPercentages = [0.18,0.20,0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let billAmount =  NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
        

        
    }
    

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
   
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        let defaults = NSUserDefaults.standardUserDefaults()
        var tipValue = defaults.doubleForKey("default_tip_percentage")
        
        if tipValue == 0.22 {
            tipControl.selectedSegmentIndex = 2
        } else if tipValue == 0.20 {
            tipControl.selectedSegmentIndex = 1
        } else {
            tipControl.selectedSegmentIndex = 0
        }
    }

    
}

