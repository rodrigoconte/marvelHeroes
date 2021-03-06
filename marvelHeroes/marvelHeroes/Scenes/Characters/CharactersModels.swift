//
//  CharactersModels.swift
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

enum Characters {
    
    // MARK: Use cases
    
    enum GetCharacters {
        struct Response {
            let results: [CharacterModel]
            let favorites: [FavoriteEntity]
        }
        struct ViewModel {
            var displayedCharacters: [DisplayedCharacter]
        }
    }
    
    enum SearchCharacters {
        struct Request {
            let searchText: String
        }
    }
    
    enum SaveInFavorite {
        struct Request {
            let indexPath: IndexPath
        }
    }
    
    enum RemoveFromFavorite {
        struct Request {
            let indexPath: IndexPath
        }
    }
    
    struct DisplayedCharacter {
        let name: String
        let isFavorited: Bool
    }
    
    enum Error {
        case emptyList
        case unexpectedError
        case database
        case notConnectedToInternet
        
        var message: String {
            switch self {
            case .emptyList:
                return "Nenhum personagem encontrado"
            case .unexpectedError:
                return ErrorConstants.unexpectedError
            case .database:
                return ErrorConstants.database
            case .notConnectedToInternet:
                return ErrorConstants.notConnectedToInternet
            }
        }
    }
}

