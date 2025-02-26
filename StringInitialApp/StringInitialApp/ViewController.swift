//
//  ViewController.swift
//  StringInitialApp
//
//  Created by Mahitha Vudutha on 1/29/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var FName: UITextField!
    
    
    @IBOutlet weak var LName: UITextField!
    
    
    @IBOutlet weak var OutputLBL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SubmitBTN(_ sender: UIButton) {
        var firstname = FName.text!
        var lastname = LName.text!
        
        // In-built prefix() used to extract first character from given string
        // uppercased() is used to convert the given string or character to uppercase
        
        var firstInitial = firstname.prefix(1).uppercased()
        var lastInitial = lastname.prefix(1).uppercased()
        
        var initials = "\(firstInitial).\(lastInitial)."
        
        OutputLBL.text = "Your initials are: \(initials)"
        
        
        
        
        
    }
    
}

