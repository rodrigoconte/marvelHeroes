//
//  CharactersNetworkManager.swift
//  marvelHeroes
//
//  Created by Rodrigo Conte on 31/01/21.
//  Copyright (c) 2021 Rodrigo Conte. All rights reserved.
//

import Foundation

class CharactersNetworkManager: CharactersWorkerManager {
    func getCharacters(completion: @escaping (Result<CharacterDataWrapperModel, Error>) -> Void) {
        let rest = RESTService<CharactersAPI>()
        
        rest.request(.getCharacters) { (result) in
            DispatchQueue.main.async {
                completion(result)
            }
        }
    }
}
