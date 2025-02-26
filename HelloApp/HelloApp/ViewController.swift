//
//  ViewController.swift
//  HelloApp
//
//  Created by Mahitha Vudutha on 1/21/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    
    @IBOutlet weak var displayOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func submitBtbClicked(_ sender: Any) {
        //Read the text field data or user input
        //and assign it to a var called name.
        
       var name = inputOL.text!
        
        //display the output in ("Hello,\(name)!")
        
        displayOL.text = "Hello, \(name)!"
    }
    


   
}

