//
//  SectionModel.swift
//  OGlobo
//
//  Created by Gabriel Chirico Mahtuk de Melo Sanzone on 02/02/21.
//  Copyright © 2021 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import Foundation

class SectionModel: Codable {
        
    var name: String?
    var url: String?
    
    enum CodingKeys: String, CodingKey {
        case name = "nome"
        case url = "url"
    }
}
