//
//  ViewController.swift
//  FitnessTrackerApp
//
//  Created by Mahitha Vudutha on 3/31/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ActivityTypeOL: UITextField!
    
    @IBOutlet weak var DurationOL: UITextField!
    
    @IBOutlet weak var CaloriesPerMinuteOL: UITextField!
    
    @IBOutlet weak var CalculateBTNOL: UIButton!
    
    @IBOutlet weak var ResetBTNOL: UIButton!
    
    var activityType = ""
       var duration = 0
       var caloriesPerMinute = 0.0
       var totalCalories = 0.0
       var activityImage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CalculateBTNOL.isEnabled = false

                // Add target action for text fields
                ActivityTypeOL.addTarget(self, action: #selector(textFieldsChanged), for: .editingChanged)
                DurationOL.addTarget(self, action: #selector(textFieldsChanged), for: .editingChanged)
                CaloriesPerMinuteOL.addTarget(self, action: #selector(textFieldsChanged), for: .editingChanged)
            }

            // This method will be called every time the text in the fields changes
            @objc func textFieldsChanged() {
                // Check if all fields have valid input
                if let activity = ActivityTypeOL.text, !activity.isEmpty,
                   let durationText = DurationOL.text, !durationText.isEmpty, Int(durationText) != nil,
                   let caloriesText = CaloriesPerMinuteOL.text, !caloriesText.isEmpty, Double(caloriesText) != nil {
                    // Enable the Calculate button
                    CalculateBTNOL.isEnabled = true
                } else {
                    // Disable the Calculate button
                    CalculateBTNOL.isEnabled = false
                }
            }

    @IBAction func CalculateBTN(_ sender: UIButton) {
        if let activity = ActivityTypeOL.text, !activity.isEmpty,
           let durationText = DurationOL.text, let durationValue = Int(durationText),
           let caloriesText = CaloriesPerMinuteOL.text, let caloriesValue = Double(caloriesText) {
            
            activityType = activity
            duration = durationValue
            caloriesPerMinute = caloriesValue
            totalCalories = Double(duration) * caloriesPerMinute
            
            switch activityType.lowercased() {
            case "running":
                activityImage = "running"
            case "cycling":
                activityImage = "cycling"
            case "swimming":
                activityImage = "swimming"
            default:
                activityImage = "default"
            }
        }
    }
    @IBAction func ResetBTN(_ sender: UIButton) {
        ActivityTypeOL.text = ""
        DurationOL.text = ""
        CaloriesPerMinuteOL.text = ""
        CalculateBTNOL.isEnabled = false
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "ResultSegue" {
                let destination = segue.destination as! ResultViewController
                destination.enteredActivityType = activityType
                destination.enteredDuration = duration
                destination.enteredCaloriesPerMinute = caloriesPerMinute
                destination.totalCaloriesBurned = totalCalories
                destination.activityImageName = activityImage
            }
        }

        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            // Reset text fields and button state when returning to the view
            ActivityTypeOL.text = ""
            DurationOL.text = ""
            CaloriesPerMinuteOL.text = ""
            CalculateBTNOL.isEnabled = false
        }
    
}

