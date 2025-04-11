//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Mahitha Vudutha on 4/6/25.
//

import UIKit

class Product{
    var productName:String
    var productDescription:String
    
    //initilizer with arguments
    init(prodName:String, prodDesc:String){
        self.productName=prodName
        self.productDescription=prodDesc
    }
}
//end of product class


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableViewOutlet.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        //indexPath -- value of each product in a row and assigned each value array to the cell
        cell.textLabel?.text = productArray[indexPath.row].productName
        return cell
    }
    
    
    @IBOutlet weak var TableViewOutlet: UITableView!
    
    //Declare an array of type products
    var productArray = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Assigning number of rows
        TableViewOutlet.delegate = self
        //Assigning the data source
        TableViewOutlet.dataSource = self
        
        let p1 = Product(prodName: "MacBook Air", prodDesc: "Laptop")
        productArray.append(p1)
        
        let p2 = Product(prodName: "iPhone", prodDesc: "Cell Phone")
        productArray.append(p2)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           let transition = segue.identifier
           if transition == "AppleProductDescription"{
               let destination = segue.destination as! ResultViewController
               destination.product = productArray[TableViewOutlet.indexPathForSelectedRow!.row]
              
           }
       }

}

