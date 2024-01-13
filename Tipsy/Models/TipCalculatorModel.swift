//
//  TipCalculatorModel.swift
//  Tipsy
//
//  Created by Apple Multiplier on 12/01/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct TipCalculator {
    var bill: Bill?

    mutating func calculateBill(tipValue: Double, billValue: Double, split: Double){
        let finalAmount = ((billValue * tipValue) + billValue) / split
        bill = Bill(currentBill: billValue, tipPct: tipValue, splitAmount: split, totalBill: finalAmount)
    }
    
    func getPctValue() -> String {
        return "\(String((bill!.tipPct * 10)))%"
    }
    
    func getAmountText() -> String {
        let pct = String(format: "%.0f", (bill!.tipPct * 100))
        let amount = String(format: "%.0f", bill!.splitAmount)
        return "Split between \(amount) people, with \(pct)% tip."
    }
    
    func getSplitValue() -> String {
        return String(format: "%.0f", bill!.splitAmount)
    }
    
    func getTotalValue() -> String {
        return String(format: "%.2f", bill!.totalBill)
    }

    
}
