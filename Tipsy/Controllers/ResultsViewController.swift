//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Apple Multiplier on 09/01/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//
 
import UIKit

class ResultsViewController: UIViewController {
    
    var total :String?
    var aomuntText :String?
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsLabel.text = aomuntText
        totalLabel.text = total

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
