//
//  MovieTabelCellViewModel.swift
//  MovieProject
//
//  Created by Eman Khaled on 08/10/2023.
//

import Foundation
class MovieTabelCellViewModel{
    var id: Int
    var title: String
    var date: String
    var rating: String
    var imageUrl : URL?
    init(movie : Movie) {
        self.id = movie.id ?? 0
        self.title = movie.title ?? movie.name ?? ""
        self.date = "\(movie.vote_count ?? 0)/10"
        self.rating = movie.release_date ?? movie.first_air_date ?? ""
        self.imageUrl = makeImageURl(movie.poster_path ?? "")
    }
    private func makeImageURl( _ imageCode: String)->URL? {
        URL(string: "\(NetworkConstant.shared.imageServerAddress)\(imageCode)")
    }
    
}
