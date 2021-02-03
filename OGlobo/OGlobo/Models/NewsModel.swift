//
//  NewsModel.swift
//  OGlobo
//
//  Created by Gabriel Chirico Mahtuk de Melo Sanzone on 02/02/21.
//  Copyright © 2021 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import Foundation

class NewsModel: Decodable {
    
    var content: [ContentsModel]?
    var product: String?

    enum CodingKeys: String, CodingKey {
        case content = "conteudos"
        case product = "produto"
    }
}
