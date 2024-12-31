//
//  FilterWheelInfo.swift
//  NINAAdvancedModelsKit
//
//  Created by Oscar Echeverri on 2024-12-30.
//

struct FilterWheelInfo: ParseableModel {
    let connected: Bool
    let name: String?
    let displayName: String?
    let description: String?
    let driverInfo: String?
    let driverVersion: String?
    let deviceId: String?
    let isMoving: Bool?
    let supportedActions: [String]?
    let selectedFilter: FilterInfo?
    let availableFilters: [FilterInfo]?
}

extension FilterWheelInfo {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case connected = "Connected"
        case displayName = "DisplayName"
        case description = "Description"
        case driverInfo = "DriverInfo"
        case driverVersion = "DriverVersion"
        case deviceId = "DeviceId"
        case isMoving = "IsMoving"
        case supportedActions = "SupportedActions"
        case selectedFilter = "SelectedFilter"
        case availableFilters = "AvailableFilters"
    }
}
