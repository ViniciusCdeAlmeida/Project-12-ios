//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }

    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        if sender == tenPctButton {
            zeroPctButton.isSelected = false
            twentyPctButton.isSelected = false
            sender.isSelected = true
        }
        if sender == twentyPctButton {
            tenPctButton.isSelected = false
            zeroPctButton.isSelected = false
            sender.isSelected = true
        }
        if sender == zeroPctButton {
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            sender.isSelected = true
        }
//        print(zeroPctButton.isSelected)
//        print(tenPctButton.set)
//        print(twentyPctButton.isSelected)
//        if zeroPctButton.isSelected {
//            zeroPctButton.titleLabel?.textColor = UIColor.red
//        } else if tenPctButton.isSelected{
//            tenPctButton.titleLabel?.textColor =   UIColor.red
//        } else if twentyPctButton.isSelected{
//            twentyPctButton.titleLabel?.textColor = UIColor.red
//        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
    }
}

