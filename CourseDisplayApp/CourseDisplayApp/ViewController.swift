//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Mahitha Vudutha on 2/11/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOL: UIImageView!
    @IBOutlet weak var crsNumOL: UILabel!
    @IBOutlet weak var crsTitleOL: UILabel!
    @IBOutlet weak var semOfferedOL: UILabel!
    @IBOutlet weak var prevBtnOL: UIButton!
    @IBOutlet weak var nextBtnOL: UIButton!
    
    var imageIndex = 0
    
    let courses = [["img01", "44555", "Network Secuirty",  "Fall 2024"],
    ["img02", "44643", "Mobile Computing", "Summer 2023"],
    ["img03", "44222", "Data Streaming", "Spring 2025"]]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Update the course details (image, crsNum, title, sem offered) with the first elemenet in the array.
        updateCourseDetails(imageIndex)
        
        //Previous button is disabled
        prevBtnOL.isEnabled = false
        
        //Next button is enabled
        nextBtnOL.isEnabled = true
        
    }
    
    @IBAction func prevBtnClicked(_ sender: UIButton) {
        //decrement the imageIndex
        imageIndex -= 1
        
        //Update the course details
        updateCourseDetails(imageIndex)
    
        //Next buttom should be enabled
        nextBtnOL.isEnabled = true
        
        //If the imageIndex is 0, the previous button must be disabled.
        if (imageIndex == 0){
            prevBtnOL.isEnabled = false
        }
    }
    
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        
        //increment the imageIndex
        imageIndex += 1
        
        //Update the course details
        updateCourseDetails(imageIndex)
        
        //previous button should be enabled
        prevBtnOL.isEnabled = true
        
        //check if the element is at the end of the array, next button should be disabled.
        if (imageIndex == courses.count-1){
            nextBtnOL.isEnabled = false
        }
        
    }
    
    func updateCourseDetails(_ imageNumber: Int){
        imageViewOL.image = UIImage(named: courses[imageIndex][0])
        crsNumOL.text = courses[imageIndex][1]
        crsTitleOL.text = courses[imageIndex][2]
        semOfferedOL.text = courses[imageIndex][3]
    }
    

}

