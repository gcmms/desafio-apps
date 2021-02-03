//
//  TextTableViewCell.swift
//  OGlobo
//
//  Created by Gabriel Chirico Mahtuk de Melo Sanzone on 03/02/21.
//  Copyright © 2021 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import UIKit

class TextTableViewCell: UITableViewCell {

    static var idCell = "TextCell"
    static var nameView = "TextTableViewCell"
    @IBOutlet weak var textPublicationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(text: String){
        textPublicationLabel.text = text
    }
}
