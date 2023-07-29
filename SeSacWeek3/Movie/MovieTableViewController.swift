//
//  MovieTableViewController.swift
//  SeSacWeek3
//
//  Created by 이상남 on 2023/07/29.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    let movies = MovieInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 200
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.movie.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell") as! MovieTableViewCell
        var movieInfo = movies.movie[indexPath.row]
        cell.movieTitleLabel.text = movieInfo.title
        cell.movieDateLabel.text = movieInfo.releaseDate
        cell.movieTimeLabel.text = "\(movieInfo.runtime)분"
        cell.movieRateLabel.text = "\(movieInfo.rate)점"
        cell.movieOverviewLabel.text = movieInfo.overview
        
        cell.moviePoster.image = UIImage(named: "\(movieInfo.title)")
        
        return cell
    }

    

}
