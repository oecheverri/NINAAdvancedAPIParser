//
//  NINAResponse.swift
//  ObservatoryWebMonitor
//
//  Created by Oscar Echeverri on 2024-12-30.
//
import Foundation

typealias CameraInfoResponse = NINAResponse<CameraInfo>
typealias FilterWheelInfoResponse = NINAResponse<FilterWheelInfo>
typealias FocuserInfoResponse = NINAResponse<FocuserInfo>
typealias GuiderInfoResponse = NINAResponse<GuiderInfo>
typealias MountInfoResponse = NINAResponse<MountInfo>

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
