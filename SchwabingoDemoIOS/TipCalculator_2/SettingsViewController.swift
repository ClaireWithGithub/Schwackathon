//
//  SettingsViewController.swift
//  TipCalculator_2
//
//  Created by 谢阳欣雨 on 1/10/19.
//  Copyright © 2019 Yangxinyu Xie. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var DefaultTipControl: UISegmentedControl!
    @IBOutlet weak var DefaultSplitField: UITextField!
    
    private var defaltTipChanged = false
    private var defaltSplitChanged = false
    private var defaultSplit = 1
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    

    @IBAction func changeTipDefault(_ sender: Any) {
        defaltTipChanged = true
    }
    
    @IBAction func changeSplitDefault(_ sender: Any) {
        defaltSplitChanged = true
        let split = Int(DefaultSplitField.text!) ?? defaultSplit
        if split != defaultSplit {
            defaultSplit = split
        }
    }
    
    func setDefaultTip(){
        let defaults = UserDefaults.standard
        defaults.set(DefaultTipControl.selectedSegmentIndex, forKey: "defaultTip")
        
        defaults.synchronize()
    }
    
    func setDefaultSplit(){
        let defaults = UserDefaults.standard
        defaultSplit = max(defaultSplit, 1)
        defaults.set(defaultSplit, forKey: "defaultSplit")
        
        defaults.synchronize()
    }

}
