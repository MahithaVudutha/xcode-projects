//
//  ViewController.swift
//  GoodByeApp
//
//  Created by Mahitha Vudutha on 1/23/25.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var fName: UITextField!
    
    @IBOutlet weak var lName: UITextField!
    
    @IBOutlet weak var OutputLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SubmitBtn(_ sender: UIButton) {
        var firstName = fName.text!
        var lastName = lName.text!
        OutputLabel.text = "Goodbye, \(firstName) \(lastName)!"
    }
    
    
}

