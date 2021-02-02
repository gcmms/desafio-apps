//
//  ImagensModel.swift
//  OGlobo
//
//  Created by Gabriel Chirico Mahtuk de Melo Sanzone on 02/02/21.
//  Copyright © 2021 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import Foundation

class ImagensModel: Codable {
    var author: String?
    var source: String?
    var legend: String?
    var url: String?

    enum CodingKeys: String, CodingKey {
        case author = "autor"
        case source = "fonte"
        case legend = "legenda"
        case url = "url"
    }
}
