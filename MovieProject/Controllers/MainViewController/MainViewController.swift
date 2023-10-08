//
//  MainViewController.swift
//  MovieProject
//
//  Created by Eman Khaled on 06/10/2023.
//

import UIKit

class MainViewController: UIViewController {
    
    //View Model:
    var viewModel : MainViewModel = MainViewModel()
    
    var cellDataSource : [MovieTabelCellViewModel] = []
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        bindViewModel()
        
    }
    
    func configView(){
        self.title = "Movies"
        self.view.backgroundColor = .lightGray
        setUpTableView()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        viewModel.getData()
    }
    func bindViewModel(){
        viewModel.isLoading.bind{ [weak self] isLoading in
            guard let self = self , let isLoading = isLoading else {
                return
            }
            DispatchQueue.main.async {
                if isLoading{
                    self.activityIndicator.startAnimating()
                }else {
                    self.activityIndicator.stopAnimating()
                }
            }
        }
        viewModel.cellDataSource.bind{ [weak self] movies in
            guard let self = self , let movies = movies else {
                return
            }
            self.cellDataSource = movies
            self.reloadTableView()
        }
    }
    func openDetail(movieId : Int){
        guard let movie = viewModel.retriveMovie(with: movieId) else {
            return
        }
        let detailsViewModel = DetailsMovieViewModel(movie: movie)
        let detailsController = DetailsMovieViewController(viewModel: detailsViewModel)
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(detailsController, animated: true)
        }
        
    }

}
