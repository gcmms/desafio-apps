//
//  ContentsModel.swift
//  OGlobo
//
//  Created by Gabriel Chirico Mahtuk de Melo Sanzone on 02/02/21.
//  Copyright © 2021 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import Foundation


class ContentsModel: Decodable {
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

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "titulo"
        case subTitle = "subTitulo"
        case text = "texto"
        case authors = "autores"
        case publicityReport = "informePublicitario"
        case url = "url"
        case section = "secao"
        case type = "tipo"
        case updated = "atualizadoEm"
        case publishedIn = "publicadoEm"
        case urlOriginal = "urlOriginal"
        case images = "imagens"
    }
}
