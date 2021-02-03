//
//  AuthorTableViewCell.swift
//  OGlobo
//
//  Created by Gabriel Chirico Mahtuk de Melo Sanzone on 03/02/21.
//  Copyright © 2021 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import UIKit

class AuthorTableViewCell: UITableViewCell {
    static var idCell = "AuthorCell"
    static var nameView = "AuthorTableViewCell"
    @IBOutlet weak var authorName: UILabel!
    @IBOutlet weak var datePublication: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setup(authorName: String, datePublication: String) {
        self.authorName.text = authorName
        self.datePublication.text = datePublication
    }
    
}
