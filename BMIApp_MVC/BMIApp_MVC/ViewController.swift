//
//  ViewController.swift
//  BMIApp_MVC
//
//  Created by Mahitha Vudutha on 3/19/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var HFeetOutlet: UITextField!
    
    
    @IBOutlet weak var HInchesOutlet: UITextField!
    
    @IBOutlet weak var WeightOutlet: UITextField!
    
    var feet = 0
    var inches = 0
    var weight = 0.0
    var bmiValue = 0.0
    var category = ""
    var imageName = ""
    var healthTip = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func CalculateBtn(_ sender: UIButton) {
        feet = Int(HFeetOutlet.text!)!
        inches = Int(HInchesOutlet.text!)!
        weight = Double(WeightOutlet.text!)!
        
        var height = feet * 12 + inches
        bmiValue = 703 * (weight / Double(height * height))
        bmiValue = round(10 * bmiValue) / 10
        
        if bmiValue <= 18.5 {
            category = "Underweight🪫"
            imageName = "underWeight"
            healthTip = "Eat more protein and healthy fats."
        } else if bmiValue <= 24.9 {
            category = "Normal👍"
            imageName = "normal"
            healthTip = "Excellent! Maintain a balanced lifestyle."
        } else if bmiValue <= 29.9 {
            category = "Overweight"
            imageName = "overWeight"
            healthTip = "Lose weight by maintaining a balanced diet and increasing physical activity."
        } else {
            category = "Obese"
            imageName = "obese"
            healthTip = "Consult a doctor for personalized advice."
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultSegue" {
            var destination = segue.destination as! ResultViewController
            
            destination.enteredFeet = feet
            destination.enteredInches = inches
            destination.enteredWeight = weight
            destination.bmiValue = bmiValue
            destination.bmiCategory = category
            destination.healthTip = healthTip
            destination.imageName = imageName
        }
    }
    

}

