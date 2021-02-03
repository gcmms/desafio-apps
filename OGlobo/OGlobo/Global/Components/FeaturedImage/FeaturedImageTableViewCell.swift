//
//  FeaturedImageTableViewCell.swift
//  OGlobo
//
//  Created by Gabriel Chirico Mahtuk de Melo Sanzone on 02/02/21.
//  Copyright © 2021 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import UIKit

class FeaturedImageTableViewCell: UITableViewCell {
    
    static var idCell = "FeaturedImage"
    static var nameView = "FeaturedImageTableViewCell"
    
    @IBOutlet weak var newsImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(title: String, imageURL: String) {
        newsImage.downloaded(from: imageURL)
    }
    
}
