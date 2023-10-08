//
//  MainViewController+TableView.swift
//  MovieProject
//
//  Created by Eman Khaled on 06/10/2023.
//

import UIKit

extension MainViewController : UITableViewDelegate, UITableViewDataSource{
    func setUpTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.backgroundColor = .white
        self.registerCells()
    }
    func reloadTableView(){
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    func registerCells(){
        tableView.register(MainMovieCell.register(), forCellReuseIdentifier: MainMovieCell.identifier)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        viewModel.numberOfSections()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainMovieCell.identifier, for: indexPath) as? MainMovieCell else {
            return UITableViewCell()
        }
        if indexPath.row < self.cellDataSource.count {
            let cellViewModel = cellDataSource[indexPath.row]
            cell.setUpCell(viewModel: cellViewModel)
            cell.selectionStyle = .none
            //self.cellDataSource[indexPath.row].title ?? ""
        } else {
            // Handle the case where the index is out of range
            cell.textLabel?.text = "No Data"
        }

        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movieId = cellDataSource[indexPath.row].id
        self.openDetail(movieId: movieId)
    }
    
    
}
