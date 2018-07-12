//
//  Movie.swift
//  MyMovies
//
//  Created by Bao Nguyen on 7/12/18.
//  Copyright © 2018 Bao Nguyen. All rights reserved.
//

import Foundation

struct Movie {
    var title: String
    var genre: Genre
    
    func genreString() -> String {
        switch genre {
        case .Animation:
            return "Animation"
        case .Action:
            return "Action"
        case .None:
            return "None"
        }
    }
}
