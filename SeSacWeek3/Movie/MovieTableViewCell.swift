//
//  MovieTableViewCell.swift
//  SeSacWeek3
//
//  Created by 이상남 on 2023/07/29.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    static let identifire = "MovieTableViewCell"
    
    @IBOutlet weak var moviePoster: UIImageView!
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieDateLabel: UILabel!
    @IBOutlet weak var movieTimeLabel: UILabel!
    @IBOutlet weak var movieRateLabel: UILabel!
    @IBOutlet weak var movieOverviewLabel: UILabel!
    
    func configureCell(movieInfo: Movie){
        moviePoster.image = UIImage(named: movieInfo.title)
        
        movieTitleLabel.text = movieInfo.title
        movieDateLabel.text = movieInfo.releaseDate
        movieTimeLabel.text = "\(movieInfo.runtime)분"
        movieRateLabel.text = "\(movieInfo.rate)점"
        movieOverviewLabel.text = movieInfo.overview
    }
    
    
    
}
