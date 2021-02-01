//
//  StoriesModel.swift
//  marvelHeroes
//
//  Created by Rodrigo Conte on 31/01/21.
//  Copyright (c) 2021 Rodrigo Conte. All rights reserved.
//

import Foundation
struct StoriesModel: Codable {
	let available : String?
	let returned : String?
	let collectionURI : String?
	let items : [ItemsModel]?
}
