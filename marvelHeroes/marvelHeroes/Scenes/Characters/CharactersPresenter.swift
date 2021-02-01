//
//  CharactersPresenter.swift
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

protocol CharactersPresentationLogic {
    func presentSomething(response: Characters.GetCharacter.Response)
}

class CharactersPresenter: CharactersPresentationLogic {
    weak var viewController: CharactersDisplayLogic?
    
    // MARK: Do something
    
    func presentSomething(response: Characters.GetCharacter.Response) {
        let viewModel = Characters.GetCharacter.ViewModel()
        viewController?.displayCharacter(viewModel: viewModel)
    }
}