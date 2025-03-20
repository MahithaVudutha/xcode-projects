//
//  ResultViewController.swift
//  BMIApp_MVC
//
//  Created by Mahitha Vudutha on 3/19/25.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var EnteredHFeet: UILabel!
    
    @IBOutlet weak var EnteredHInches: UILabel!
    
    @IBOutlet weak var EnteredWeight: UILabel!
    
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    @IBOutlet weak var ImgOutlet: UIImageView!
    
    var enteredFeet = 0
    var enteredInches = 0
    var enteredWeight = 0.0
    var bmiValue = 0.0
    var bmiCategory = ""
    var healthTip = ""
    var imageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        EnteredHFeet.text = EnteredHFeet.text! + String(enteredFeet)
        EnteredHInches.text = EnteredHInches.text! + String(enteredInches)
        EnteredWeight.text = EnteredWeight.text! + String(enteredWeight)
        ResultLabel.text = """
        Your Body Mass Index is \(bmiValue). 
        This is considered \(bmiCategory).
        Health tip: \(healthTip)
        """
        ImgOutlet.image = UIImage(named: imageName)
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
