//
//  Timestamp.swift
//  marvelHeroes
//
//  Created by Rodrigo Conte on 01/02/21.
//

import Foundation

class Timestamp {
    static func generateTimestamp() -> String {
        let date = Date()
        let timeInterval = date.timeIntervalSince1970
        return String(timeInterval)
    }
}
