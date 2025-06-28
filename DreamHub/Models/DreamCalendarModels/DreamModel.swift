//
//  DreamModel.swift
//  DreamHub
//
//  Created by Yi Ling on 6/27/25.
//

import Foundation

class DreamModel: Encodable, Decodable {
    var date: Date?
    var content: String?
    var setiments: [String]
}

class Setiment: Encodable, Decodable {
    var name: String?
    var level: Int?
}
