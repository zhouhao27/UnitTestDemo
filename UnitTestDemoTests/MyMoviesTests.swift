//
//  MyMoviesTests.swift
//  UnitTestDemo
//
//  Created by Zhou Hao on 30/1/18.
//  Copyright © 2018 Zhou Hao. All rights reserved.
//

import Quick
import Nimble
@testable import UnitTestDemo

class MyMoviesTests: QuickSpec {
  override func spec() {
    var subject: MovieTVC!
    
    describe("MovieViewControllerSpec") {
      beforeEach {
        subject = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MovieTVC") as! MovieTVC
        
        _ = subject.view  // load the view
      }
      context("when the view is loaded") {
        it("should have 8 movies loaded") {
          expect(subject.tableView.numberOfRows(inSection: 0)).to(equal(8))
        }
      }
      context("Table View") {
        var cell: UITableViewCell!
        
        beforeEach {
          cell = subject.tableView(subject.tableView, cellForRowAt: IndexPath(row: 0, section: 0))
        }
        
        it("should show movie title and genre") {
          expect(cell.textLabel?.text).to(equal("The Emoji Movie"))
          expect(cell.detailTextLabel?.text).to(equal("Animation"))
        }
      }      
    }
  }
}
