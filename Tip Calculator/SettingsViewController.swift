//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Nashawn Chery on 12/16/15.
//  Copyright © 2015 Cereza Enterprises. All rights reserved.
//

import UIKit


class SettingsViewController: UIViewController {
    
    
    @IBOutlet weak var percentOneButton: UIButton!
    
    @IBOutlet weak var percentTwoButton: UIButton!
    
    @IBOutlet weak var percentTwoTwoButton: UIButton!
    
    var defaults = NSUserDefaults.standardUserDefaults()
    

    @IBAction func buttonOnePressed(sender: UIButton) {
        defaults.setDouble(0.18, forKey: "default_tip_percentage")
        defaults.synchronize()
    }
    
    @IBAction func buttonTwoPressed(sender: UIButton) {
        defaults.setDouble(0.20, forKey: "default_tip_percentage")
        defaults.synchronize()
    }
    
    @IBAction func buttonTwoTwoPressed(sender: AnyObject) {
        defaults.setDouble(0.22, forKey: "default_tip_percentage")
        defaults.synchronize()

    }
}
