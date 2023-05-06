//
//  MainViewController+TableView.swift
//  MV
//
//  Created by 近江伸一 on 2023/05/06.
//

import Foundation
import UIKit
extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func setupTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.backgroundColor = .clear
        registerCells()
    }
    func registerCells() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberObSections()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
    
    
    
    
}
