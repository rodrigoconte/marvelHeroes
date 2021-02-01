//
//  CharactersPresenter.swift
//  marvelHeroes
//
//  Created by Rodrigo Conte on 31/01/21.
//  Copyright (c) 2021 Rodrigo Conte. All rights reserved.
//

import Foundation
struct CharacterModel: Codable {
	let code : String?
	let status : String?
	let copyright : String?
	let attributionText : String?
	let attributionHTML : String?
	let data : DataModel?
	let etag : String?
}
