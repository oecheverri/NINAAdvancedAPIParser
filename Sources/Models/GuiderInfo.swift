//
//  GuiderInfo.swift
//  NINAAdvancedAPIModelsKit
//
//  Created by Oscar Echeverri on 2025-01-03.
//

struct AxisError: Codable {
    var pixel: Double
    var arcseconds: Double

    enum CodingKeys: String, CodingKey {
        case pixel = "Pixel"
        case arcseconds = "Arcseconds"
    }
}

struct RMSError: Codable {
    var ra: AxisError
    var dec: AxisError
    var total: AxisError
    var peakRA: AxisError
    var peakDec: AxisError

    enum CodingKeys: String, CodingKey {
        case ra = "RA"
        case dec = "Dec"
        case total = "Total"
        case peakRA = "PeakRA"
        case peakDec = "PeakDec"
    }
}

struct GuiderInfo: ParseableModel {
    var canClearCalibration: Bool?
    var canSetShiftRate: Bool?
    var canGetLockPosition: Bool?
    var supportedActions: [String]?
    var rmsError: RMSError?
    var pixelScale: Double?
    var connected: Bool
    var name: String?
    var displayName: String?
    var description: String?
    var driverInfo: String?
    var driverVersion: String?
    var deviceId: String?

    enum CodingKeys: String, CodingKey {
        case canClearCalibration = "CanClearCalibration"
        case canSetShiftRate = "CanSetShiftRate"
        case canGetLockPosition = "CanGetLockPosition"
        case supportedActions = "SupportedActions"
        case rmsError = "RMSError"
        case pixelScale = "PixelScale"
        case connected = "Connected"
        case name = "Name"
        case displayName = "DisplayName"
        case description = "Description"
        case driverInfo = "DriverInfo"
        case driverVersion = "DriverVersion"
        case deviceId = "DeviceId"
    }
}
