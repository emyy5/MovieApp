//
//  DetailsMovieViewModel.swift
//  MovieProject
//
//  Created by Eman Khaled on 08/10/2023.
//

import Foundation
class DetailsMovieViewModel {
    var movieImage : URL?
    var movieTitle: String
    var movieDescription: String
    var movieID: Int

    init(movie: Movie) {
        self.movieID = movie.id ?? 0
        self.movieTitle = movie.title ?? movie.name ?? ""
        self.movieDescription = movie.overview ?? ""
        self.movieImage = makeImageURL(movie.backdrop_path ?? "")
        
    }
    private func makeImageURL(_ imageCode: String)-> URL?{
        URL(string: "\(NetworkConstant.shared.imageServerAddress)\(imageCode)")
    }
}
