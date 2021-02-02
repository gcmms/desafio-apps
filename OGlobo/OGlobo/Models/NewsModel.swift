//
//  NewsModel.swift
//  OGlobo
//
//  Created by Gabriel Chirico Mahtuk de Melo Sanzone on 02/02/21.
//  Copyright © 2021 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import Foundation
import ObjectMapper

class NewsModel: Mappable {
    
    var content: [ContentsModel]?
    var product: String?

    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        content <- map["conteudos"]
        product <- map["produto"]
    }
    
}
