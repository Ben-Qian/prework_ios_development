//
//  ViewController.swift
//  tipcalculator
//
//  Created by 孙建芬 on 2022/1/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var tipamount: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(inputField.text!) ?? 0
        let tipPercentages = [0.15, 0.2, 0.25]
        let tip = bill * tipPercentages[tipamount.selectedSegmentIndex]
        let total = bill + tip
        totalLabel.text = String(format:"$%.2f",total)
        tipLabel.text = String(format:"$%.2f", tip)
    }
    
}
