//
//  ResultViewController.swift
//  Savings_Goal_Planner
//
//  Created by Mahitha Vudutha on 3/26/25.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var GoalTypeLabel: UILabel!
    
    @IBOutlet weak var TargetAmountLabel: UILabel!
    
    @IBOutlet weak var InterestRateLabel: UILabel!
    
    @IBOutlet weak var CalculatedSavingsLabel: UILabel!
    
    @IBOutlet weak var GoalImageView: UIImageView!
    
    var goalType = ""
    var targetAmount = ""
    var interestRate = ""
    var calculatedSavings = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        GoalTypeLabel.text = "Goal Type: " + goalType
        TargetAmountLabel.text = "Target Amount: " + targetAmount
        InterestRateLabel.text = "Entered Interest Rate: " + interestRate
        CalculatedSavingsLabel.text = "Calculated Savings: " + calculatedSavings
        
        // Setting the goal image directly inside viewDidLoad()
        if goalType.lowercased() == "car" {
            GoalImageView.image = UIImage(named: "car")
        } else if goalType.lowercased() == "vacation" {
            GoalImageView.image = UIImage(named: "vacation")
        } else if goalType.lowercased() == "home" {
            GoalImageView.image = UIImage(named: "home")
        } else {
            GoalImageView.image = UIImage(named: "default")
        }
        
        // Animate Image
        GoalImageView.alpha = 0.0
        UIView.animate(withDuration: 1.5) {
            self.GoalImageView.alpha = 1.0
        }
    }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


