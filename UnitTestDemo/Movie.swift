//
//  Movie.swift
//  UnitTestDemo
//
//  Created by Zhou Hao on 30/1/18.
//  Copyright © 2018 Zhou Hao. All rights reserved.
//

import Foundation

enum Genre: Int {
  case animation
  case action
  case none
}

struct Movie {
  var title: String
  var genre: Genre
  
  func genreString() -> String {
    switch genre {
    case .action:
      return "Action"
    case .animation:
      return "Animation"
    default:
      return "None"
    }
  }
}
