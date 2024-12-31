//
//  FilterInfo.swift
//  NINAAdvancedModelsKit
//
//  Created by Oscar Echeverri on 2024-12-30.
//

struct FilterInfo: Codable {
    let name: String
    let id: Int
}

extension FilterInfo {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case id = "Id"
    }
}
