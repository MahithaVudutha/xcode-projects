//
//  ResultViewController.swift
//  TableViewDemo
//
//  Created by Mahitha Vudutha on 4/625.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var product : Product?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayLabel.text = "The product \((product?.productName)! ) is of \((product?.productDescription)!) category"
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
