//
//  CharactersAPI.swift
//  marvelHeroes
//
//  Created by Rodrigo Conte on 31/01/21.
//  Copyright (c) 2021 Rodrigo Conte. All rights reserved.
//

import Foundation

enum CharactersAPI {
    case getCharacters
}

extension CharactersAPI: RESTRequest {
    
    var baseURL: String {
        return "https://gateway.marvel.com"
    }
    
    var path: String {
        switch self {
        case .getCharacters:
            return "/v1/public/characters"
        }
    }
    
    var queryItems: [URLQueryItem]? {
        let timestamp = Timestamp.generateTimestamp()
        let timestampQueryItem = URLQueryItem(name: "ts", value: timestamp)
        
        let publicKey = "17ce73d21ca996d853d33611bdba2c54"
        let apiKeyQueryItem = URLQueryItem(name: "apikey", value: publicKey)
        
        let privateKey = "f88f15a11cb56db01c686c90811ef32b63c71f64"
        let hashString = MD5.generateMD5Hash(from: timestamp + privateKey + publicKey)
        let hashQueryItem = URLQueryItem(name: "hash", value: hashString)
        
        return [timestampQueryItem, apiKeyQueryItem, hashQueryItem]
    }
    
    var httpMethod: HTTPMethod {
        switch self {
        case .getCharacters:
            return .get
        }
    }
}
