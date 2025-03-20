//
//  ResultViewController.swift
//  DiscountApp_MVC
//
//  Created by Mahitha Vudutha on 3/19/25.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var EnteredAmountOutlet: UILabel!
    
    @IBOutlet weak var EnteredDiscountOutlet: UILabel!
    
    
    @IBOutlet weak var PriceAfterDiscOutlet: UILabel!
    
    var amount = ""
    var discRate = ""
    var priceAfterDisc = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        EnteredAmountOutlet.text = EnteredAmountOutlet.text! + amount
        
        EnteredDiscountOutlet.text = EnteredDiscountOutlet.text! + discRate
        
        PriceAfterDiscOutlet.text = PriceAfterDiscOutlet.text! + priceAfterDisc
        
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
