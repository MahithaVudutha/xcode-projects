//
//  ResultViewController.swift
//  FitnessTrackerApp
//
//  Created by Mahitha Vudutha on 3/31/25.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var EnteredActivityTypeOL: UILabel!
    @IBOutlet weak var EnteredDurationOL: UILabel!
    
    @IBOutlet weak var EnteredCaloriesPerMinuteOL: UILabel!
    
    
    @IBOutlet weak var ResultLabelOL: UILabel!
    
    @IBOutlet weak var ImageViewOL: UIImageView!
    var enteredActivityType = ""
    var enteredDuration = 0
    var enteredCaloriesPerMinute = 0.0
    var totalCaloriesBurned = 0.0
    var activityImageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        EnteredActivityTypeOL.text = "Activity Type: " + enteredActivityType
               EnteredDurationOL.text = "Duration: " + String(enteredDuration) + " minutes"
               EnteredCaloriesPerMinuteOL.text = "Calories per Minute: " + String(enteredCaloriesPerMinute)
               ResultLabelOL.text = "Total Calories Burned: " + String(totalCaloriesBurned)

               // Display the image for the activity
               ImageViewOL.image = UIImage(named: activityImageName)
               
               // Image animation effect
               ImageViewOL.alpha = 0.0
               UIView.animate(withDuration: 1.5) {
                   self.ImageViewOL.alpha = 1.0
               }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
