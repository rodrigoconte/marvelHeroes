//
//  ResultsModel.swift
//  marvelHeroes
//
//  Created by Rodrigo Conte on 31/01/21.
//  Copyright (c) 2021 Rodrigo Conte. All rights reserved.
//

import Foundation
struct ResultsModel: Codable {
	let id : String?
	let name : String?
	let description : String?
	let modified : String?
	let resourceURI : String?
	let urls : [UrlsMoodel]?
	let thumbnail : ThumbnailModel?
	let comics : ComicsModel?
	let stories : StoriesModel?
	let events : EventsModel?
	let series : SeriesModel?
}
