//
//  ViewController.swift
//  Prework_JamesScholz
//
//  Created by jay on 8/17/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // update total amount
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }
    //  @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
       // let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get total tip by multiplying tip * tipPercentage
     //   let tipPercentages = [0.15, 0.18, 0.2]
    //    let tip = bill *
    //    tipPercentages[tipControl.selectedSegmentIndex]
    //    let total = bill + tip
        
        // Update tip amount label
     //   tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // Update total amount
     //   totalLabel.text = String(format: "%.2f", total)
        
   // }
}

