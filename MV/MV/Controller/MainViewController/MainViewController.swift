//
//  MainViewController.swift
//  MV
//
//  Created by 近江伸一 on 2023/05/06.
//

import UIKit

class MainViewController: UIViewController {
    //ViewModel
    var viewModel: MainViewModel = MainViewModel()
    //IBOutlet
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
      config()
    }
    func config(){
        self.title = "MainView"
        self.view.backgroundColor = .yellow
        setupTableView()
    }
    override func viewDidAppear(_ animated: Bool) {
        viewModel.getData()
    }
    
}
