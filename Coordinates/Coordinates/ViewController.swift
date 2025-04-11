//
//  ViewController.swift
//  Coordinates
//
//  Created by Mahitha Vudutha on 2/5/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
        //Set some random image
        imageViewOutlet.image = UIImage(named: "Apple")
        
        let minx = imageViewOutlet.frame.minX
        let miny = imageViewOutlet.frame.minY
        print(minx, ",", miny)
        
        let maxx = imageViewOutlet.frame.maxX
        let maxy = imageViewOutlet.frame.maxY
        print(maxx, ",", maxy)
        
        
        // Move the location to the upper left corner.
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 0
        
        //Initial image view Width i.e., imageViewOutlet.frame.width is 100
        //Initial image view  Height i.e., imageViewOutlet.frame.height is 100
        
        // Move the location to the upper right corner.
        //The screen width is 414 (iPhone 16 Pro), and we subtract the image width (imageViewOutlet.frame.width) from it to ensure the image's right edge aligns with the right side of the screen.
        imageViewOutlet.frame.origin.x = 293  // Adjust x to fit in the screen width (393 - imageViewOutlet.frame.width)
        imageViewOutlet.frame.origin.y = 0
        
        
        // Move the location to the bottom left corner.
        //The screen height is 896, and by subtracting the image's height (imageViewOutlet.frame.height), we place the bottom of the image at the bottom of the screen. This ensures that the image's bottom edge aligns with the screen's bottom edge.
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 752  // Adjust y to fit in the screen height (852 -imageViewOutlet.frame.height)
        
        
        // Move the location to the bottom right corner.
       imageViewOutlet.frame.origin.x = 293 // Adjust x to fit in the screen width i.e., (393 - imageViewOutlet.frame.width)
       imageViewOutlet.frame.origin.y = 752  // Adjust y to fit in the screen height i.e., (852 - imageViewOutlet.frame.height)

        // Move the location of the object to the center of the view.
        imageViewOutlet.frame.origin.x = 146.5 // Adjust to Center x i.e., (393 - imageViewOutlet.frame.width) / 2 )
        imageViewOutlet.frame.origin.y = 376  // Adjust to Center y i.e., (852 - imageViewOutlet.frame.height) / 2


        
    }

}

