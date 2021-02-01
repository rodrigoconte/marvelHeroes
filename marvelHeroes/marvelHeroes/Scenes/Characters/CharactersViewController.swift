//
//  CharactersViewController.swift
//  marvelHeroes
//
//  Created by Rodrigo Conte on 31/01/21.
//  Copyright (c) 2021 Rodrigo Conte. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol CharactersDisplayLogic: class {
    func displayCharacter(viewModel: Characters.GetCharacter.ViewModel)
}

class CharactersViewController: UIViewController {
    var interactor: CharactersBusinessLogic?
    var router: (NSObjectProtocol & CharactersRoutingLogic & CharactersDataPassing)?
    
    // MARK: Object lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
    {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    // MARK: Private functions
    
    private func setup() {
        title = "Personagens"
    }
    
}

// MARK: Character Display Logic

extension CharactersViewController: CharactersDisplayLogic {
    func displayCharacter(viewModel: Characters.GetCharacter.ViewModel) {
        
    }
}
