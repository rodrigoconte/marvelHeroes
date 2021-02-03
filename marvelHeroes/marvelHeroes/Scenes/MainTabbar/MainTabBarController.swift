//
//  MainTabBarController.swift
//  marvelHeroes
//
//  Created by Rodrigo Conte on 01/02/21.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    
    let charactersNavigationController: UINavigationController = {
        let viewController = CharactersFactory.setupController()
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem.image = UIImage(named: "characters")
        return navigationController
    }()
    
    let favoritesNavigationController: UINavigationController = {
        let viewController = FavoritesFactory.setupController()
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem.image = UIImage(named: "favorite-icon")
        viewController.tableView.reloadData()
        return navigationController
    }()
    
    //MARK: Object Initialization
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    //MARK: Private Functions
    
    private func setup() {
        tabBar.tintColor = .black
        viewControllers = [charactersNavigationController, favoritesNavigationController]
    }
    
}
