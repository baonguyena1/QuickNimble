//
//  MyMoviesTests.swift
//  MyMoviesTests
//
//  Created by Bao Nguyen on 7/12/18.
//  Copyright © 2018 Bao Nguyen. All rights reserved.
//

import Quick
import Nimble
@testable import MyMovies

class MyMoviesTests: QuickSpec {
    
    override func spec() {
        var subject: MoviesTableViewController!
        
        describe("MoviesTableViewControllerSpec") {
            beforeEach {
                subject = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MoviesTableViewController") as! MoviesTableViewController
                _ = subject.view
            }
            
            context("When view is loaded", closure: {
                it("should have 8 movies loaded", closure: {
                    expect(subject.tableView.numberOfRows(inSection: 0)).to(equal(8))
                })
            })
            
            context("Table view", closure: {
                var cell: UITableViewCell!
                
                beforeEach {
                    cell = subject.tableView(subject.tableView, cellForRowAt: IndexPath(row: 0, section: 0))
                }
                
                it("should show movie title and genre", closure: {
                    expect(cell.textLabel?.text).to(equal("The Emoji Movie"))
                    expect(cell.detailTextLabel?.text).to(equal("Animation"))
                })
            })
        }
    }
    
}
