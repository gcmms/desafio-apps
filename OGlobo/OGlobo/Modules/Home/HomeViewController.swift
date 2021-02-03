//
//  HomeViewController.swift
//  OGlobo
//
//  Created by Gabriel Chirico Mahtuk de Melo Sanzone on 02/02/21.
//  Copyright © 2021 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import UIKit
import Alamofire
import SafariServices

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    var dataSource = [ContentsModel]() {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    var interactor: HomeInteractor?
    var router: HomeRouter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customNavigationViewController()
        steupTableView()
        interactor = HomeInteractor()
        router = HomeRouter()
        router?.viewController = self
        interactor?.viewController = self
        interactor?.getDataSource()
        // Do any additional setup after loading the view.
    }
    
    private func steupTableView(){
        tableView.register(UINib(nibName: FeaturedImageTableViewCell.nameView, bundle: nil), forCellReuseIdentifier: FeaturedImageTableViewCell.idCell)
        tableView.register(UINib(nibName: ShowNewsTableViewCell.nameView, bundle: nil), forCellReuseIdentifier: ShowNewsTableViewCell.idCell)
    }
    
    private func customNavigationViewController() {
        self.navigationController?.navigationBar.barTintColor = UIColor(named: "primaryColor")!
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.topItem?.title = "O GLOBO"
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            return setupFeaturedImageCell(indexPath: indexPath)
        } else {
            return setupShowNewsTableViewCell(indexPath: indexPath)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let item = dataSource[indexPath.row] as? ContentsModel else { return }
        router?.openPublication(publication: item)
    }
}
//Steup Cell
extension HomeViewController {
    
    private func setupFeaturedImageCell(indexPath: IndexPath) -> UITableViewCell {
        guard let item = dataSource[indexPath.row] as? ContentsModel else { return setupGenericCell() }
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FeaturedImageTableViewCell.idCell, for: indexPath) as? FeaturedImageTableViewCell else { return setupGenericCell() }
        cell.setup(title: item.title ?? "", imageURL: item.images?.first?.url ?? "")
        return cell
    }
    
    private func setupShowNewsTableViewCell(indexPath: IndexPath) -> UITableViewCell {
        guard let item = dataSource[indexPath.row] as? ContentsModel else { return setupGenericCell() }
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ShowNewsTableViewCell.idCell, for: indexPath) as? ShowNewsTableViewCell else { return setupGenericCell() }
        cell.setup(title: item.title ?? "", subtitle: item.section?.name ?? "", imageURL: item.images?.first?.url ?? "")
        return cell
    }
    
    private func setupGenericCell() -> UITableViewCell {
        return UITableViewCell()
    }
}
