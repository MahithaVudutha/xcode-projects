//
//  ViewController.swift
//  TravelBooking
//
//  Created by Mahitha Vudutha on 4/10/25.
//

import UIKit

class BookingViewController: UIViewController {

    @IBOutlet weak var travellerNameOL: UITextField!
    
    @IBOutlet weak var noofTravellersOL: UITextField!
    
    @IBOutlet weak var cabinTypeOL: UITextField!
    var totalCost = 0
    var classType = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func bookNowButton(_ sender: UIButton) {
        let travellerName = travellerNameOL.text!
        let noOfTravellers = Int(noofTravellersOL.text!) ?? 0
        classType = cabinTypeOL.text!.lowercased()
        
        // Logic for cost calculation
        if classType == "economy" {
            totalCost = noOfTravellers * 150
        } else if classType == "luxury" {
            totalCost = noOfTravellers * 250
        } else {
            totalCost = -1 // Invalid
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "resultSegue" {
            let destination = segue.destination as! ResultViewController
            
            destination.travellerName = travellerNameOL.text!
            destination.noOfTravellers = noofTravellersOL.text!
            destination.cabinType = cabinTypeOL.text!
            
            if totalCost == -1 {
                destination.resultMessage = "Please select a valid class"
                destination.totalCost = ""
                destination.imageName = "invalid"
            } else {
                destination.resultMessage = "Enjoy your \(classType.capitalized) Trip!"
                destination.totalCost = "$\(totalCost)"
                destination.imageName = classType // should match image name in assets
            }
        }
    }
}



