//
//  SubtitleTableViewCell.swift
//  OGlobo
//
//  Created by Gabriel Chirico Mahtuk de Melo Sanzone on 03/02/21.
//  Copyright © 2021 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import UIKit

class SubtitleTableViewCell: UITableViewCell {
    static var idCell = "SubtitleCell"
    static var nameView = "SubtitleTableViewCell"
    @IBOutlet weak var subtitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setup(subtitle: String) {
        subtitleLabel.text = subtitle
    }
    
}
