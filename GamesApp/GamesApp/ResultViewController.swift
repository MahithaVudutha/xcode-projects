//
//  ResultViewController.swift
//  GamesApp
//
//  Created by Mahitha Vudutha on 4/21/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var nameOL: UILabel!
    
    @IBOutlet weak var descriptionOL: UITextView!
    var selectedGame: Game?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.title = selectedGame?.name
        if let game = selectedGame {
            
            nameOL.text = game.name
            descriptionOL.text = game.information
            imageViewOL.image = game.imageName
        }
        
        // Animate the image view
        imageViewOL.alpha = 0.0
        UIView.animate(withDuration: 1.5) {
            self.imageViewOL.alpha = 1
            
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
}
