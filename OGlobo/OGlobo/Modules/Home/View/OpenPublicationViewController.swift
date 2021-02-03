//
//  OpenPublicationViewController.swift
//  OGlobo
//
//  Created by Gabriel Chirico Mahtuk de Melo Sanzone on 03/02/21.
//  Copyright © 2021 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import UIKit

class OpenPublicationViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.separatorStyle = .none
        }
    }
    var publication: ContentsModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        steupTableView()
    }
    
    private func steupTableView(){
        tableView.register(UINib(nibName: TitleTableViewCell.nameView, bundle: nil), forCellReuseIdentifier: TitleTableViewCell.idCell)
        tableView.register(UINib(nibName: SubtitleTableViewCell.nameView, bundle: nil), forCellReuseIdentifier: SubtitleTableViewCell.idCell)
        tableView.register(UINib(nibName: AuthorTableViewCell.nameView, bundle: nil), forCellReuseIdentifier: AuthorTableViewCell.idCell)
        tableView.register(UINib(nibName: ImageTableViewCell.nameView, bundle: nil), forCellReuseIdentifier: ImageTableViewCell.idCell)
        tableView.register(UINib(nibName: TextTableViewCell.nameView, bundle: nil), forCellReuseIdentifier: TextTableViewCell.idCell)
    }
}

extension OpenPublicationViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.idCell, for: indexPath) as? TitleTableViewCell else { return setupGenericCell() }
            cell.setup(title: publication?.title ?? "")
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SubtitleTableViewCell.idCell, for: indexPath) as? SubtitleTableViewCell else { return setupGenericCell() }
            cell.setup(subtitle: publication?.subTitle ?? "")
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: AuthorTableViewCell.idCell, for: indexPath) as? AuthorTableViewCell else { return setupGenericCell() }
            cell.setup(authorName: publication?.authors?.first ?? "", datePublication: publication?.publishedIn ?? "")
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ImageTableViewCell.idCell, for: indexPath) as? ImageTableViewCell else { return setupGenericCell() }
            cell.setup(title: publication?.images?.first?.legend ?? "", image: publication?.images?.first?.url ?? "")
            return cell
        case 4:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TextTableViewCell.idCell, for: indexPath) as? TextTableViewCell else { return setupGenericCell() }
            cell.setup(text: publication?.text ?? "")
            return cell
            
        default:
            return UITableViewCell()
        }
       return UITableViewCell()
    }
    
    private func setupGenericCell() -> UITableViewCell {
        return UITableViewCell()
    }
}
