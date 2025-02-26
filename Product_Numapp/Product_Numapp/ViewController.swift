//
//  ViewController.swift
//  Product_Numapp
//
//  Created by Mahitha Vudutha on 1/23/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstNum: UITextField!
    
    @IBOutlet weak var secondNum: UITextField!
    
    @IBOutlet weak var OutputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Calculate(_ sender: UIButton) {
       var f_Num = firstNum.text!
       var s_Num = secondNum.text!
        var num1 = Double(f_Num)!
        var num2 = Double(s_Num)!
        
        var result = num1 * num2
        OutputLabel.text = "The product of two numbers is: \(result)"
        
    }
    
}
