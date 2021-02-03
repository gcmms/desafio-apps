//
//  ShowNewsTableViewCell.swift
//  OGlobo
//
//  Created by Gabriel Chirico Mahtuk de Melo Sanzone on 02/02/21.
//  Copyright © 2021 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import UIKit

class ShowNewsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var newsImage: UIImageView! {
        didSet {
            newsImage.contentMode = .scaleAspectFit
        }
    }
    
    static var idCell = "ShowNews"
    static var nameView = "ShowNewsTableViewCell"
        
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setup(title: String, subtitle: String, imageURL: String){
        titleLabel.text = title
        subtitleLabel.text = subtitle
        newsImage.downloaded(from: imageURL)
    }
}
