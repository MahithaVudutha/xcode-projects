//
//  ViewController.swift
//  AirQualityCheck
//
//  Created by Mahitha Vudutha on 1/31/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pm25TF: UITextField!
    
    @IBOutlet weak var pm10TF: UITextField!
    
    @IBOutlet weak var imageViewTF: UIImageView!
    
    
    @IBOutlet weak var outputLBL: UILabel!
    
    @IBOutlet weak var PM10: UILabel!
    @IBOutlet weak var PM25LBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checkQualityBTN(_ sender: UIButton) {
        var pm25 = pm25TF.text!
        var pm10 = pm10TF.text!
        if pm25.isEmpty || pm10.isEmpty {
                    outputLBL.text = "Please enter the input values for PM2.5 and PM10."
                    imageViewTF.image = nil
                    return
        }
                
        if var pm25value = Double(pm25), var pm10value = Double(pm10) {
            var AQC = (pm25value + pm10value) / 2
            AQC = round(AQC * 10) / 10

                    if AQC < 50 {
                        outputLBL.text = "The AQC value is \(AQC) \n This is considered to be best👍 quality air."
                        imageViewTF.image = UIImage(named: "Best")
                    } else if AQC >= 50 && AQC < 100 {
                        outputLBL.text = "The AQC value is \(AQC) \n This is considered to be moderate quality air😕."
                        imageViewTF.image = UIImage(named: "Moderate")
                    } else {
                        outputLBL.text = "The AQC value is \(AQC) \n This is considered to be poor quality air😢."
                        imageViewTF.image = UIImage(named: "Poor")
                    }
                } else {
                    outputLBL.text = "Please enter valid numeric values for PM2.5 and PM10."
                    imageViewTF.image = nil
                }
            }
    
    @IBAction func resetBTN(_ sender: UIButton) {
        pm25TF.text = ""
        pm10TF.text = ""
        outputLBL.text = "Label"
        imageViewTF.image = UIImage(named: "")
    }
    
    
}

