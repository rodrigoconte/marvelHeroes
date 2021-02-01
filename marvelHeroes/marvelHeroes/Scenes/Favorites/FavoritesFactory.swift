//
//  FavoritesFactory.swift
//  marvelHeroes
//
//  Created by Rodrigo Conte on 01/02/21.
//

import Foundation

struct FavoritesFactory {
    static func setupController() -> FavoritesViewController {
        let viewController = FavoritesViewController()
        let interactor = FavoritesInteractor()
        let presenter = FavoritesPresenter()
        let router = FavoritesRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
        return viewController
    }
}
