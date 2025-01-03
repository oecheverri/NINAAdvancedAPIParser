//
//  FocuserInfo.swift
//  NINAAdvancedModelsKit
//
//  Created by Oscar Echeverri on 2024-12-31.
//
import Foundation

struct FocuserInfo: ParseableModel {
    let position: Int?
    let stepSize: Int?
    let temperature: Double?
    let isMoving: Bool?
    let isSettling: Bool?
    let tempComp: Bool?
    let tempCompAvailable: Bool?
    let supportedActions: [String]?
    let connected: Bool
    let name: String?
    let displayName: String?
    let description: String?
    let driverInfo: String?
    let driverVersion: String?
    let deviceId: String?

    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.stepSize = try? container.decodeIfPresent(Int.self, forKey: .stepSize)
        self.temperature = try? container.decodeIfPresent(Double.self, forKey: .temperature)
        self.position = try container.decodeIfPresent(Int.self, forKey: .position)
        self.isMoving = try container.decodeIfPresent(Bool.self, forKey: .isMoving)
        self.isSettling = try container.decodeIfPresent(Bool.self, forKey: .isSettling)
        self.tempComp = try container.decodeIfPresent(Bool.self, forKey: .tempComp)
        self.tempCompAvailable = try container.decodeIfPresent(
            Bool.self, forKey: .tempCompAvailable)
        self.supportedActions = try container.decodeIfPresent(
            [String].self, forKey: .supportedActions)
        self.connected = try container.decode(Bool.self, forKey: .connected)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.displayName = try container.decodeIfPresent(String.self, forKey: .displayName)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.driverInfo = try container.decodeIfPresent(String.self, forKey: .driverInfo)
        self.driverVersion = try container.decodeIfPresent(String.self, forKey: .driverVersion)
        self.deviceId = try container.decodeIfPresent(String.self, forKey: .deviceId)
    }

}

extension FocuserInfo {
    enum CodingKeys: String, CodingKey {
        case position = "Position"
        case stepSize = "StepSize"
        case temperature = "Temperature"
        case isMoving = "IsMoving"
        case isSettling = "IsSettling"
        case tempComp = "TempComp"
        case tempCompAvailable = "TempCompAvailable"
        case supportedActions = "SupportedActions"
        case connected = "Connected"
        case name = "Name"
        case displayName = "DisplayName"
        case description = "Description"
        case driverInfo = "DriverInfo"
        case driverVersion = "DriverVersion"
        case deviceId = "DeviceId"

    }
}
