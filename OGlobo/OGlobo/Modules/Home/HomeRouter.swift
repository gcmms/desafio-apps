//
//  HomeRouter.swift
//  OGlobo
//
//  Created by Gabriel Chirico Mahtuk de Melo Sanzone on 03/02/21.
//  Copyright © 2021 Gabriel Chirico Mahtuk de Melo Sanzone. All rights reserved.
//

import Foundation

class HomeRouter {
    
    var viewController: HomeViewController?
    
    func openPublication(publication: ContentsModel) {
        let vc = OpenPublicationViewController()
        vc.publication = publication
        viewController?.navigationController?.pushViewController(vc, animated: true)
    }
    
}
