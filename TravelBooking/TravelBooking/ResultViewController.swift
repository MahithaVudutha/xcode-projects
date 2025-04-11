//
//  ResultViewController.swift
//  TravelBooking
//
//  Created by Mahitha Vudutha on 4/10/25.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var resultOL: UILabel!
    
    @IBOutlet weak var travellerNameOL: UILabel!
    
    
    @IBOutlet weak var noOfTravellersOL: UILabel!
    
    @IBOutlet weak var cabinTyoeOL: UILabel!
    
    @IBOutlet weak var totalCostOL: UILabel!
    var travellerName = ""
    var noOfTravellers = ""
    var cabinType = ""
    var totalCost = ""
    var resultMessage = ""
    var imageName = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultOL.text = resultMessage
        travellerNameOL.text = "Traveller Name: \(travellerName)"
        noOfTravellersOL.text = "No. of Guests: \(noOfTravellers)"
        cabinTyoeOL.text = "Class Type: \(cabinType.capitalized)"
        totalCostOL.text = "Total Cost: \(totalCost)"
        
        imageOL.image = UIImage(named: imageName)
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
