//
//  CharacterDataWrapperModel.swift
//  marvelHeroes
//
//  Created by Rodrigo Conte on 01/02/21.
//

import Foundation

struct CharacterDataWrapperModel: Decodable {
    let code: Int?
    let status: String?
    let copyright: String?
    let attributionText: String?
    let attributionHTML: String?
    let etag: String?
    let data: CharacterDataContainerModel?
}
