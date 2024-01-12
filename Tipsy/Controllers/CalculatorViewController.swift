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
    var tipValue: Double = 0.0
    var splitValue: Int = 0
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        if sender == tenPctButton {
            zeroPctButton.isSelected = false
            twentyPctButton.isSelected = false
            sender.isSelected = true
            tipValue = 0.1
        }
        if sender == twentyPctButton {
            tenPctButton.isSelected = false
            zeroPctButton.isSelected = false
            sender.isSelected = true
            tipValue = 0.2
        }
        if sender == zeroPctButton {
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            sender.isSelected = true
            tipValue = 0.0
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f",sender.value)
        splitValue = Int(sender.value)
    }
    
    
    @IBAction func calulatePressed(_ sender: UIButton) {
//        print(billTextField.hasText)
        let percentValue = Double(billTextField.text!)! * tipValue
        let totalValue = (percentValue + Double(billTextField.text!)!) / Double(splitValue)
        print(totalValue)
    }
}

