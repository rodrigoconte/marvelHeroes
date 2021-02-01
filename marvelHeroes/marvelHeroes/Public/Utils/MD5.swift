//
//  MD5.swift
//  marvelHeroes
//
//  Created by Rodrigo Conte on 01/02/21.
//

import Foundation
import CryptoKit

class MD5 {
    static func generateMD5Hash(from key: String) -> String? {
        guard let data = key.data(using: .utf8) else { return nil }
        let md5 = Insecure.MD5.hash(data: data)
        let string = md5.map({String(format: "%02hhx", $0)}).joined()
        return string
    }
}
