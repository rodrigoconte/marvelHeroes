//
//  CharacterDataContainerModel.swift
//  marvelHeroes
//
//  Created by Rodrigo Conte on 01/02/21.
//

import Foundation

struct CharacterDataContainerModel: Decodable {
    let offset: Int?
    let limit: Int?
    let total: Int?
    let count: Int?
    let results: [CharacterModel]?
}

