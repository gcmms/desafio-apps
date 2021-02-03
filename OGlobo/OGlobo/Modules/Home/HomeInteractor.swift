//
//  HomeInteractor.swift
//  OGlobo
//
//  Created by Gabriel Chirico Mahtuk de Melo Sanzone on 03/02/21.
//  Copyright © 2021 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import Foundation

class HomeInteractor {
    
    weak var viewController: HomeViewController?
    var dataSource = [ContentsModel]() {
        didSet {
            viewController?.dataSource = self.dataSource
        }
    }
    
    func getDataSource() {
       let url = URL(string: "https://raw.githubusercontent.com/Infoglobo/desafio-apps/master/capa.json")!
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            do {
                guard let data = data else { return }
                let newsModel = try JSONDecoder().decode([NewsModel].self, from: data)
                guard let content = newsModel.first?.content as? [ContentsModel] else { return }
                    self.dataSource = content
            } catch {
                print("error")
            }
        }

        task.resume()
    
    }
}
