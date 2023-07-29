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
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieTableViewCell.identifire) as! MovieTableViewCell
        cell.configureCell(movieInfo: movies.movie[indexPath.row])
        
        return cell
    }

    

}
