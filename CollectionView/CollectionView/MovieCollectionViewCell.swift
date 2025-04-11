//
//  MovieCollectionViewCell.swift
//  CollectionView
//
//  Created by Mahitha Vudutha on 4/9/25.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageViewOutlet: UIImageView!
    func assignMovie(with movie: Movie){
        imageViewOutlet.image = movie.image
    }
}
