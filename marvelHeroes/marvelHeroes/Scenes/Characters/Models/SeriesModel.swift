//
//  SeriesModel.swift
//  marvelHeroes
//
//  Created by Rodrigo Conte on 31/01/21.
//  Copyright (c) 2021 Rodrigo Conte. All rights reserved.
//

import Foundation

struct SeriesModel: Decodable {
    let available: Int?
    let collectionURI: String?
    let items: [SeriesSummaryModel]?
    let returned: Int?
}
