//
//  CharactersPresenter.swift
//  marvelHeroes
//
//  Created by Rodrigo Conte on 31/01/21.
//  Copyright (c) 2021 Rodrigo Conte. All rights reserved.
//

import Foundation
struct CharacterModel: Decodable {
    let id: Int?
    let name: String?
    let description: String?
    let modified: String?
    let thumbnail: ThumbnailModel?
    let resourceURI: String?
    let comics: ComicsModel?
    let series: SeriesModel?
    let stories: StoriesModel?
    let events: EventsModel?
    let urls: [UrlsModel]?
}
