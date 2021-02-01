//
//  RestErrors.swift
//  marvelHeroes
//
//  Created by Rodrigo Conte on 31/01/21.
//  Copyright (c) 2021 Rodrigo Conte. All rights reserved.
//

import Foundation

enum RESTError {
    case failedToCreateURL
}

// MARK: Error manager

extension RESTError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .failedToCreateURL:
            return "Erro while URL creation"
        }
    }
}
