//
//  ViewController.swift
//  Vudutha_SearchApp
//
//  Created by Mahitha Vudutha on 3/18/25.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var prevButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    var topicsArray = ["Space Exploration", "Famous Landmarks", "Inventions & Innovations", "Wildlife Wonders", "Popular Festivals"]
        var currentImages: [String] = []
        var currentTopicIndex: Int = -1
        var currentImageIndex: Int = 0

        var spaceImages = ["planet", "rocket", "nasa"]
        var landmarksImages = ["eiffel", "vienna_opera", "liberty"]
        var inventionsImages = ["bulb", "telephone", "airplane"]
        var wildlifeImages = ["polarbear", "kangaroo", "penguin"]
        var festivalsImages = ["diwali", "christmas", "halloween"]

        var spaceKeywords = ["planet", "rocket", "nasa", "astronaut", "galaxy"]
        var landmarksKeywords = ["landmark", "tower", "vienna", "statue", "architecture"]
        var inventionsKeywords = ["invention", "innovation", "discovery", "technology"]
        var wildlifeKeywords = ["wildlife", "animal", "creature", "nature", "habitat"]
        var festivalsKeywords = ["festival", "celebration", "holiday", "event", "tradition"]
    
      
    
        let topicDescriptions: [String: String] = [
            "planet": "Planets are massive celestial bodies that orbit stars. Our Solar System consists of eight planets: Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, and Neptune. Some planets, like Earth, have atmospheres and conditions that support life, while others, like Jupiter, are gas giants. Mars, known as the Red Planet, is a major focus for future human exploration.",
            
            "rocket": "Rockets are vehicles designed to travel beyond Earth's atmosphere. They work on the principle of Newton’s Third Law: 'For every action, there is an equal and opposite reaction.' Rockets have been used for space exploration, launching satellites, and interplanetary missions. The Saturn V rocket, for example, carried astronauts to the Moon during the Apollo missions.",
            
            "nasa": "NASA (National Aeronautics and Space Administration) is a U.S. government agency responsible for space exploration, aeronautics, and scientific discovery. Established in 1958, NASA has led iconic missions such as the Apollo Moon landings, the Mars Rover explorations, the Hubble Space Telescope, and the Artemis program, which aims to return humans to the Moon and eventually reach Mars.",
            
            "eiffel": "The Eiffel Tower is one of the most recognizable structures in the world. Built by Gustave Eiffel for the 1889 World's Fair, it stands 330 meters (1,083 feet) tall and was originally criticized but later became a beloved landmark of Paris. It attracts millions of tourists yearly, offering breathtaking panoramic views of the city from its observation decks.",
            
            "vienna_opera": "The Vienna State Opera, built in 1869, is a world-renowned opera house in Austria. It hosts operas, ballets, and concerts featuring some of the best classical performers. The opera house is famous for its grand architecture, rich history, and annual Vienna Opera Ball, which is attended by celebrities, dignitaries, and classical music enthusiasts from around the globe.",
            
            "liberty": "The Statue of Liberty, located on Liberty Island in New York Harbor, was a gift from France to the U.S. in 1886 to commemorate the American Revolution and the enduring friendship between the two nations. Standing at 93 meters (305 feet), Lady Liberty holds a torch symbolizing enlightenment and a tablet inscribed with 'JULY IV MDCCLXXVI' (July 4, 1776), marking U.S. independence.",
            
            "bulb": "The electric lightbulb, developed by Thomas Edison in 1879, revolutionized the way people live and work. Although several inventors contributed to its development, Edison’s design was the first to be practical and commercially viable. The invention of the lightbulb paved the way for modern lighting and electrical grids, transforming industries and daily life worldwide.",
            
            "telephone": "The telephone, invented by Alexander Graham Bell in 1876, was the first device that allowed people to communicate instantly over long distances. The invention evolved from early wired models to today’s wireless smartphones, which have become an essential part of modern life, allowing instant communication, internet access, and multimedia capabilities.",
            
            "airplane": "The Wright brothers, Orville and Wilbur, made history in 1903 by achieving the first controlled, powered flight with their aircraft, the Wright Flyer. Their breakthrough in aerodynamics and aircraft control paved the way for modern aviation, leading to the development of commercial air travel, military aircraft, and space exploration technology.",
            
            "polarbear": "Polar bears are the largest land carnivores and are native to the Arctic region. They rely on sea ice to hunt seals, their primary food source. Due to climate change, the shrinking ice caps are threatening their survival. Polar bears are excellent swimmers and can travel long distances across icy waters in search of food.",
            
            "kangaroo": "Kangaroos are marsupials native to Australia, known for their powerful hind legs and ability to leap great distances. They use their tails for balance and carry their young (joeys) in pouches. Kangaroos are social animals that live in groups called mobs and play a crucial role in Australia’s ecosystem.",
            
            "penguin": "Penguins are flightless birds that thrive in cold climates, particularly in Antarctica. They are excellent swimmers and use their flippers to propel themselves underwater while hunting for fish. Some species, like the Emperor Penguin, endure extreme conditions during breeding season, with males incubating eggs on their feet for two months without eating.",
            
            "diwali": "Diwali, also called Deepavali, is the Hindu festival of lights. It symbolizes the victory of light over darkness and good over evil. Celebrations include lighting oil lamps (diyas), setting off fireworks, and exchanging sweets. Families clean and decorate their homes, while prayers are offered to Lakshmi, the goddess of wealth and prosperity.",
            
            "christmas": "Christmas, celebrated on December 25th, marks the birth of Jesus Christ. It is one of the most widely observed holidays worldwide. Traditions include decorating Christmas trees, exchanging gifts, attending church services, and enjoying festive meals with family and friends. Santa Claus is a beloved figure who delivers presents to children on Christmas Eve.",
            
            "halloween": "Halloween, observed on October 31st, originates from the ancient Celtic festival of Samhain. It is believed that on this night, the boundary between the living and the dead is blurred. People dress in costumes, carve pumpkins into jack-o'-lanterns, and go trick-or-treating. Haunted houses, horror movies, and spooky decorations are also popular traditions."
        ]

        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        searchTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        resultImage.image = UIImage(named: "welcome")
        
        topicInfoText.text = "Hello, Mahitha!!"
        searchButton.isEnabled = false
        updateButtonState()
    }


    @IBAction func searchButtonAction(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1113)
        if let query = searchTextField.text?.lowercased(), !query.isEmpty {
                   if spaceKeywords.contains(query) {
                       currentImages = spaceImages
                       currentTopicIndex = 0
                   } else if landmarksKeywords.contains(query) {
                       currentImages = landmarksImages
                       currentTopicIndex = 1
                   } else if inventionsKeywords.contains(query) {
                       currentImages = inventionsImages
                       currentTopicIndex = 2
                   } else if wildlifeKeywords.contains(query) {
                       currentImages = wildlifeImages
                       currentTopicIndex = 3
                   } else if festivalsKeywords.contains(query) {
                       currentImages = festivalsImages
                       currentTopicIndex = 4
                   } else {
                       resultImage.image = UIImage(named: "search_not_found")
                       topicInfoText.text = "No results found for \(query)"
                       return
                   }
                   
                   currentImageIndex = 0
                   updateImage()
                  updateButtonState()
               }
        
    }
    
    
    @IBAction func ShowNextImageBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1105)
        if currentTopicIndex != -1, currentImageIndex < currentImages.count - 1 {
                   currentImageIndex += 1
                   updateImage()
               }
        updateButtonState()
    }
    
    
    @IBAction func ShowPrevImageBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1105)
        if currentTopicIndex != -1, currentImageIndex > 0 {
                   currentImageIndex -= 1
                   updateImage()
               }
        updateButtonState()
    }
    
    @IBAction func ResetBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1111)
        resultImage.image = UIImage(named: "welcome")
        topicInfoText.text = "Hello, Mahitha!!"
        searchTextField.text = ""
        currentImages.removeAll()
        currentTopicIndex = -1
        currentImageIndex = 0
        searchButton.isEnabled = false
        updateButtonState()
    }
    func updateButtonState() {
        nextButton.isEnabled = currentTopicIndex != -1 && currentImageIndex < currentImages.count - 1
        prevButton.isEnabled = currentTopicIndex != -1 && currentImageIndex > 0
        
    }
    
    func updateImage() {
           if currentTopicIndex != -1 {
               let imageName = currentImages[currentImageIndex]
               resultImage.image = UIImage(named: imageName)
               topicInfoText.text = topicDescriptions[imageName] ?? "Description not available."
           }
       }
    @objc func textFieldDidChange(_ textField: UITextField) {
        if let query = textField.text, !query.isEmpty {
            // Enable search button when text is present
            searchButton.isEnabled = true
        } else {
            // Disable search button when the text field is empty
            searchButton.isEnabled = false
        }
    }
    
}

