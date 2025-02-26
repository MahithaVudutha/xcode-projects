//
//  ViewController.swift
//  SurgeryCostApp
//
//  Created by Mahitha Vudutha on 1/27/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var NameTF: UITextField!
    
    @IBOutlet weak var SurgeryTF: UITextField!
    
    @IBOutlet weak var CostTF: UITextField!
    
    
    @IBOutlet weak var ImgView: UIImageView!
    
    
    
    @IBOutlet weak var OutputLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func CalculateBTN(_ sender: UIButton) {
        var name = NameTF.text!
        var surgery = SurgeryTF.text!
        var cost = CostTF.text!
        
        if name == "" || surgery == "" || cost == "" {
            OutputLbl.text = "Please fill all the fields"
            ImgView.image = UIImage(named: "noResults")
            return
        }
        var totalCost = Double(cost)!
                
            var taxPercent: Double = 0
            var healthInsurance: Double = 0
            var imgName: String = "noResults"
            
            switch surgery.lowercased() {
            case "heart":
                taxPercent = 11.75
                healthInsurance = 500
                imgName = "Heart"
            case "brain":
                taxPercent = 12.5
                healthInsurance = 750
                imgName = "Brain"
            case "knee replacement":
                taxPercent = 6.25
                healthInsurance = 350
                imgName = "Knee"
            case "spine surgery":
                taxPercent = 8.75
                healthInsurance = 400
                imgName = "Spine"
            default:
                OutputLbl.text = "Invalid Surgery Type"
                imgName = "noResults"
                return
            }
            
            var totalSurgeryCost = totalCost * (1 + (taxPercent/100)) - healthInsurance
            var finalCost = String(format: "%.2f", totalSurgeryCost)
            
            OutputLbl.text = "\(name): \n Total Cost for \(surgery) is: $\(finalCost)"
            ImgView.image = UIImage(named: imgName)
            
        }
        
    }
    

