//
//  ViewController.swift
//  Vudutha_CalculatorApp
//
//  Created by Mahitha Vudutha on 2/10/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultOutlet: UILabel!
    var currentNumber: String = ""
    var previousNumber: Double = 0
    var operation: String = ""
    var performingMath = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  
    @IBAction func buttonZero(_ sender: UIButton) {
        appendNumber(sender)
    }
    @IBAction func buttonOne(_ sender: UIButton) {
        appendNumber(sender)
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        appendNumber(sender)
    }
    @IBAction func buttonThree(_ sender: UIButton) {
        appendNumber(sender)
    }
    
    @IBAction func buttonFour(_ sender: UIButton) {
        appendNumber(sender)
    }
    
    @IBAction func buttonFive(_ sender: UIButton) {
        appendNumber(sender)
    }
    
    @IBAction func buttonSix(_ sender: UIButton) {
        appendNumber(sender)
    }
    
    @IBAction func buttonSeven(_ sender: UIButton) {
        appendNumber(sender)
    }
    
    @IBAction func buttonEight(_ sender: UIButton) {
        appendNumber(sender)
    }
    
    
    @IBAction func buttonNine(_ sender: UIButton) {
        appendNumber(sender)
    }
    func appendNumber(_ sender: UIButton) {
            if let numValue = sender.titleLabel?.text {
                if performingMath {
                    currentNumber = numValue
                    performingMath = false
                } else {
                    currentNumber += numValue
                }
                resultOutlet.text = currentNumber
            }
        }
    
    @IBAction func buttonDecimal(_ sender: UIButton) {
        if !currentNumber.contains(".") {
                   currentNumber += currentNumber.isEmpty ? "0." : "."
                   resultOutlet.text = currentNumber
               }
    }
    
    @IBAction func buttonModulo(_ sender: UIButton) {
        operationPressed(sender)
    }
    
    @IBAction func buttonEqualto(_ sender: UIButton) {
        let newNumber = Double(currentNumber) ?? 0
                var result: Double = 0
                
                switch operation {
                case "+": result = previousNumber + newNumber
                case "-": result = previousNumber - newNumber
                case "*": result = previousNumber * newNumber
                case "/": result = newNumber == 0 ? Double.nan : previousNumber / newNumber
                case "%": result = previousNumber.truncatingRemainder(dividingBy: newNumber)
                default: return
                }
                
                currentNumber = String(format: "%g", result)
                resultOutlet.text = currentNumber
                performingMath = true
    }
    @IBAction func buttonAdd(_ sender: UIButton) {
        operationPressed(sender)
    }
    
    @IBAction func buttonSubtract(_ sender: UIButton) {
        operationPressed(sender)
    }
    
    @IBAction func buttonMultiply(_ sender: UIButton) {
        operationPressed(sender)
    }
    
    @IBAction func buttonDivide(_ sender: UIButton) {
        operationPressed(sender)
    }
    func operationPressed(_ sender: UIButton) {
           if let op = sender.titleLabel?.text, !currentNumber.isEmpty {
               previousNumber = Double(currentNumber) ?? 0
               operation = op
               performingMath = true
           }
       }
    
    @IBAction func buttonSignChange(_ sender: UIButton) {
        if !currentNumber.isEmpty, let number = Double(currentNumber) {
                    currentNumber = String(format: "%g", -number)
                    resultOutlet.text = currentNumber
                }
    }
    
    
    @IBAction func buttonClear(_ sender: UIButton) {
        currentNumber = ""
        resultOutlet.text = "0"
    }
    
    @IBAction func buttonClearAll(_ sender: UIButton) {
        currentNumber = ""
               previousNumber = 0
               operation = ""
               resultOutlet.text = "0"
           }
    }
    
    


