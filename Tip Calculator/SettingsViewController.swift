//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Nashawn Chery on 12/24/15.
//  Copyright © 2015 Cereza Enterprises. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultControl: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func onPressed(sender: AnyObject) {
        var defaultPercentages = [0.18,0.20,0.22]
        let defaultPercentage = defaultPercentages[defaultControl.selectedSegmentIndex]
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(defaultPercentage, forKey: "default_tip_percentage")
        defaults.synchronize()
        
        
        
    }
    
    


}
