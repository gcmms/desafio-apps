//
//  ContentsModel.swift
//  OGlobo
//
//  Created by Gabriel Chirico Mahtuk de Melo Sanzone on 02/02/21.
//  Copyright © 2021 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import Foundation

import Foundation
import ObjectMapper

class ContentsModel: Mappable {
    var id: Int?
    var title: String?
    var subTitle: String?
    var text: String?
    var authors: [String]?
    var publicityReport: Bool?
    var url: String?
    var section: SectionModel?
    var type: String?
    var updated: String?
    var publishedIn: String?
    var urlOriginal: String?
    var images: [ImagensModel]?

    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        authors <- map["autores"]
        publicityReport <- map["informePublicitario"]
        subTitle <- map["subTitulo"]
        text <- map["texto"]
        updated <- map["atualizadoEm"]
        id <- map["id"]
        publishedIn <- map["publicadoEm"]
        section <- map["secao"]
        type <- map["tipo"]
        title <- map["titulo"]
        url <- map["url"]
        urlOriginal <- map["urlOriginal"]
        images <- map["imagens"]

    }
    
}
