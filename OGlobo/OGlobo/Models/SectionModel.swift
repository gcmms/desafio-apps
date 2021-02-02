//
//  SectionModel.swift
//  OGlobo
//
//  Created by Gabriel Chirico Mahtuk de Melo Sanzone on 02/02/21.
//  Copyright © 2021 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import Foundation
import ObjectMapper

class SectionModel {
        
    var name: String?
    var url: String?
    
    required convenience init?(map: Map) {
        self.init()
    }
        
    func mapping(map: Map) {
        name <- map["nome"]
        url <- map["url"]
    }
}
