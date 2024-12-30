//
//  NINAResponse.swift
//  ObservatoryWebMonitor
//
//  Created by Oscar Echeverri on 2024-12-30.
//
import Foundation

struct NINAResponse<Model: ParseableModel>: Codable {
    
    let response: Model?
    let error: String
    let statusCode: Int
    let success: Bool
    let type: String
    
}

extension NINAResponse {
    enum CodingKeys: String, CodingKey {
        case response = "Response"
        case error = "Error"
        case statusCode = "StatusCode"
        case success = "Success"
        case type = "Type"
    }
}
