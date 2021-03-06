//
//  EventsModel.swift
//  marvelHeroes
//
//  Created by Rodrigo Conte on 31/01/21.
//  Copyright (c) 2021 Rodrigo Conte. All rights reserved.
//

import Foundation

struct EventsModel: Decodable {
    let available: Int?
    let collectionURI: String?
    let items: [EventSummaryModel]?
    let returned: Int?
}
