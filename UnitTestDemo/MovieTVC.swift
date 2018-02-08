//
//  MovieTVC.swift
//  UnitTestDemo
//
//  Created by Zhou Hao on 30/1/18.
//  Copyright © 2018 Zhou Hao. All rights reserved.
//

import UIKit

class MovieTVC: UITableViewController {

  let movies = MoviesHelper.getMovies()
  
  // MARK: - Table view data source
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return movies.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
    let movie = movies[indexPath.row]
    cell.textLabel?.text = movie.title
    cell.detailTextLabel?.text = movie.genreString()
    return cell
  }

  public override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailsVC") as! DetailsVC
    
    self.navigationController?.pushViewController(vc, animated: true)
    
  }
  
  @IBAction func onMap(_ sender: Any) {
    let vc = self.storyboard?.instantiateViewController(withIdentifier: "MapVC") as! MapVC
    
    self.navigationController?.pushViewController(vc, animated: true)
  }
}
