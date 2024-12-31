//
//  BinningMode.swift
//  NINAAdvancedAPIModelsKit
//
//  Created by Oscar Echeverri on 2024-12-30.
//
struct BinningMode: Codable {
    let name: String
    let x: Int
    let y: Int
}

extension BinningMode {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case x = "X"
        case y = "Y"
    }
}
