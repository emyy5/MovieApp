//
//  DetailsMovieViewController.swift
//  MovieProject
//
//  Created by Eman Khaled on 08/10/2023.
//

import UIKit
import SDWebImage
class DetailsMovieViewController: UIViewController {

    var viewModel: DetailsMovieViewModel
    @IBOutlet weak var describtionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    init(viewModel : DetailsMovieViewModel){
        self.viewModel = viewModel
        super.init(nibName: "DetailsMovieViewController", bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:)has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

       configView()
    }
    func configView(){
        self.title = "Movie Details"
        titleLabel.text = viewModel.movieTitle
        describtionLabel.text = viewModel.movieDescription
        imageView.sd_setImage(with: viewModel.movieImage)
        
    }

}
