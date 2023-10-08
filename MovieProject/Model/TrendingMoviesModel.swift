//
//  TrendingMoviesModel.swift
//  MovieProject
//
//  Created by Eman Khaled on 08/10/2023.
//

import Foundation
import Foundation

class TrendingMovieModel : Decodable{
    var page: Int
    var results: [Movie]
    var total_pages: Int?
    var total_results: Int?
   
}

class Movie: Decodable{
    var backdrop_path : String?
    var id : Int?
    var title : String?
    var original_title: String?
    var overview: String?
    var popularity: Double?
    var poster_path:String?
    var release_date: String?
    var vote_count: Int?
    var name: String?
    var original_name: String?
    var first_air_date : String?

    }
    

