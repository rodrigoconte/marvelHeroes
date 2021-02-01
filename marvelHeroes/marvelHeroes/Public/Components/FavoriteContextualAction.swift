//
//  FavoriteContextualAction.swift
//  marvelHeroes
//
//  Created by Rodrigo Conte on 01/02/21.
//

import UIKit

class FavoriteContextualAction: UIContextualAction {
    
    //MARK: Object Lifecycle
    
    var isFavorite: Bool = false {
        didSet {
            if isFavorite {
                image = UIImage(named: "full-star")
            } else {
                image = UIImage(named: "empty-star")
            }
        }
    }
    
    //MARK: Object Lifecycle
    
    private override init() {}
    
    convenience init(handler: @escaping UIContextualAction.Handler) {
        self.init(style: .normal, title: nil, handler: handler)
        isFavorite = false
    }
}
