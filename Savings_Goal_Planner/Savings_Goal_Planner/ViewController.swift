//
//  ViewController.swift
//  Savings_Goal_Planner
//
//  Created by Mahitha Vudutha on 3/26/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var GoalTypeOutlet: UITextField!
    
    @IBOutlet weak var TargetAmountOutlet: UITextField!
    
    @IBOutlet weak var InterestRateOutlet: UITextField!
    
    @IBOutlet weak var TimePeriodOutlet: UITextField!
    
    @IBOutlet weak var CalculateButton: UIButton!
    
    @IBOutlet weak var ResetButton: UIButton!
    var totalMonths = 0.0
    var monthlyInterestRate = 0.0
    var monthlySavingsPayment = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CalculateButton.isEnabled = false
        ResetButton.isEnabled = false
        
      GoalTypeOutlet.addTarget(self, action: #selector(textFieldsChanged), for: .editingChanged)
    TargetAmountOutlet.addTarget(self, action: #selector(textFieldsChanged), for: .editingChanged)
       InterestRateOutlet.addTarget(self, action: #selector(textFieldsChanged), for: .editingChanged)
       TimePeriodOutlet.addTarget(self, action: #selector(textFieldsChanged), for: .editingChanged)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Reset all input fields
        GoalTypeOutlet.text = ""
        TargetAmountOutlet.text = ""
        InterestRateOutlet.text = ""
        TimePeriodOutlet.text = ""
    }
    @IBAction func CalcSavingsPressed(_ sender: UIButton) {
        var targetAmount = Double(TargetAmountOutlet.text!)
        var interestRate = Double(InterestRateOutlet.text!)
        var timePeriod = Double(TimePeriodOutlet.text!)
        
        // Formula as per given instructions
        totalMonths = timePeriod! * 12
        monthlyInterestRate = (interestRate! / 100) / 12
        monthlySavingsPayment = targetAmount! / ((pow(1 + monthlyInterestRate, totalMonths) - 1) / monthlyInterestRate)
    }
    
    
    @IBAction func ResetFieldsPressed(_ sender: UIButton) {
        GoalTypeOutlet.text = ""
        TargetAmountOutlet.text = ""
        InterestRateOutlet.text = ""
        TimePeriodOutlet.text = ""
        CalculateButton.isEnabled = false
        ResetButton.isEnabled = false
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ResultSegue" {
            var destination = segue.destination as! ResultViewController
            
            destination.goalType = GoalTypeOutlet.text!
            destination.targetAmount = TargetAmountOutlet.text!
            destination.interestRate = InterestRateOutlet.text!
            destination.calculatedSavings = String(format: "%.2f", monthlySavingsPayment)
        }
    }
    @objc func textFieldsChanged() {
        if !(GoalTypeOutlet.text!.isEmpty || TargetAmountOutlet.text!.isEmpty || InterestRateOutlet.text!.isEmpty || TimePeriodOutlet.text!.isEmpty) {
            CalculateButton.isEnabled = true
            ResetButton.isEnabled = true
        } else {
            CalculateButton.isEnabled = false
            ResetButton.isEnabled = false
        }
    }
}
    

