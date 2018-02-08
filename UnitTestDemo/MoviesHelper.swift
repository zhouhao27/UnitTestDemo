//
//  MoviesHelper.swift
//  UnitTestDemo
//
//  Created by Zhou Hao on 30/1/18.
//  Copyright © 2018 Zhou Hao. All rights reserved.
//

import Foundation

class MoviesHelper {
  static func getMovies() -> [Movie] {
    return [
      Movie(title: "The Emoji Movie", genre: .animation),
      Movie(title: "Logan", genre: .action),
      Movie(title: "Wonder Woman", genre: .action),
      Movie(title: "Zootopia", genre: .animation),
      Movie(title: "The Baby Boss", genre: .animation),
      Movie(title: "Despicable Me 3", genre: .animation),
      Movie(title: "Spiderman: Homecoming", genre: .action),
      Movie(title: "Dunkirk", genre: .animation)
    ]
  }
}
