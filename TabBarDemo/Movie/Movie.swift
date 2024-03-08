//
//  Movie.swift
//  TabBarDemo
//
//  Created by csuftitan on 3/6/24.
//

import Foundation
import UIKit

struct Movie{
    var movieImage : UIImage
    var movieName : String
}

var movie : [Movie] = [
    Movie(movieImage: #imageLiteral(resourceName: "Avatar.jpeg"), movieName: "Avatar"),
    Movie(movieImage: #imageLiteral(resourceName: "Disney Jungle.jpeg"), movieName: "Disney Jungle"),
    Movie(movieImage: #imageLiteral(resourceName: "Love Again.jpeg"), movieName: "Love Again"),
    Movie(movieImage: #imageLiteral(resourceName: "Mean Girls.jpeg"), movieName: "Mean Girls"),
    Movie(movieImage: #imageLiteral(resourceName: "WISH.jpeg"), movieName: "WISH"),
    Movie(movieImage: #imageLiteral(resourceName: "Mission Impossible.jpeg"), movieName: "Mission Impossible"),
    
]
