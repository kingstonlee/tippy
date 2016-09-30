//
//  SettingsViewController.swift
//  Tipper
//
//  Created by Kingston Lee on 9/30/16.
//  Copyright © 2016 Kingston. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipSetting: UISegmentedControl!
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        defaultTipSetting.selectedSegmentIndex = defaults.integer(forKey: "default_tip_index")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func defaultTipTap(_ sender: AnyObject) {
        saveDefaultValues()
    }
    
    func saveDefaultValues() {
        
        defaults.set(defaultTipSetting.selectedSegmentIndex, forKey: "default_tip_index")
        defaults.synchronize()
    }
    
    

}
