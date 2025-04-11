//
//  ViewController.swift
//  CollectionView
//
//  Created by Mahitha Vudutha on 4/9/25.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movie", for: indexPath) as! MovieCollectionViewCell
        cell.assignMovie(with: movies[indexPath.row])
        return cell
    
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        assignMovieDetails(indexPath: indexPath)
    }
   func assignMovieDetails(indexPath: IndexPath){
       TtileOL.text = "Movie Title:  \(movies[indexPath.row].title)"
       YearOL.text = "Year:  \(movies[indexPath.row].releasedYear)"
       RatingOL.text = "Rating:  \(movies[indexPath.row].movieRating)"
       BofOL.text = "Box Office:  \(movies[indexPath.row].boxOffice)"
       
    }
    
    @IBOutlet weak var CollectionViewOutlet: UICollectionView!
    
    @IBOutlet weak var TtileOL: UILabel!
    
    @IBOutlet weak var YearOL: UILabel!
    
    @IBOutlet weak var RatingOL: UILabel!
    
    @IBOutlet weak var BofOL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CollectionViewOutlet.delegate = self
        CollectionViewOutlet.dataSource = self
    }
    
}


