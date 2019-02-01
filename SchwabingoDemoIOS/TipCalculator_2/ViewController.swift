//
//  ViewController.swift
//  TipCalculator_2
//
//  Created by 谢阳欣雨 on 1/10/19.
//  Copyright © 2019 Yangxinyu Xie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var UITextField: UITextField!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var SplitField: UITextField!
    @IBOutlet weak var SplitLabel: UILabel!
    
    @IBAction func editSplitField(_ sender: Any) {
        SplitField.becomeFirstResponder()
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
}

