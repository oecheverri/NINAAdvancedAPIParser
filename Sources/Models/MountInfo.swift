//
//  MountInfo.swift
//  NINAAdvancedModelsKit
//
//  Created by Oscar Echeverri on 2024-12-31.
//

import Foundation

// MARK: Supporting Types

struct DateTime: Codable {
    let now: String?
    let utcNow: String?

    enum CodingKeys: String, CodingKey {
        case now = "Now"
        case utcNow = "UtcNow"
    }
}

struct Coordinates: Codable {
    let ra: Double?
    let raDegrees: Double?
    let dec: Double?
    let epoch: Epoch?
    let dateTime: DateTime?

    enum CodingKeys: String, CodingKey {
        case ra = "RA"
        case raDegrees = "RADegrees"
        case dec = "Dec"
        case epoch = "Epoch"
        case dateTime = "DateTime"
    }
}

enum TrackingMode: Int, Codable, Sendable {
    case Sidereal
    case Lunar
    case Solar
    case King
    case Custom
    case Stopped
}

struct TrackingRate: Codable, Sendable {
    let trackingMode: TrackingMode?
    enum CodingKeys: String, CodingKey {
        case trackingMode = "TrackingMode"
    }
}

enum SideOfPier: Int, Codable, Sendable {
    case East = 0
    case West = 1
    case Unknown = -1
}

struct AxisRate: Codable {

    let item1: Double?
    let item2: Double?

    enum CodingKeys: String, CodingKey {
        case item1 = "Item1"
        case item2 = "Item2"
    }
}

// MARK: - Main Type
struct MountInfo: ParseableModel {
    let siderealTime: Double?
    let rightAscension: Double?
    let declination: Double?
    let siteLatitude: Double?
    let siteLongitude: Double?
    let siteElevation: Double?
    let coordinates: Coordinates?
    let timeToMeridianFlip: Double?
    let sideOfPier: SideOfPier?
    let altitude: Double?
    let azimuth: Double?
    let atPark: Bool?
    let trackingRate: TrackingRate?
    let trackingEnabled: Bool?
    let trackingModes: [TrackingMode]?
    let atHome: Bool?
    let canFindHome: Bool?
    let canPark: Bool?
    let canSetPark: Bool?
    let canSetTrackingEnabled: Bool?
    let canSetDeclinationRate: Bool?
    let canSetRightAscensionRate: Bool?
    let equatorialSystem: Epoch?
    let hasUnknownEpoch: Bool?
    let slewing: Bool?
    let guideRateRightAscensionArcsecPerSec: Double?
    let guideRateDeclinationArcsecPerSec: Double?
    let canMovePrimaryAxis: Bool?
    let canMoveSecondaryAxis: Bool?
    let primaryAxisRates: [AxisRate]?
    let secondaryAxisRates: [AxisRate]?
    let supportedActions: [String]?

    // TODO: Figure out all the different alignment mode values and their meanings, and create an enum
    let alignmentMode: Int?

    let canPulseGuide: Bool?
    let isPulseGuiding: Bool?
    let canSetPierSide: Bool?
    let canSlew: Bool?
    let utcDate: Date?
    let connected: Bool  // Non-optional
    let name: String?
    let displayName: String?
    let deviceId: String?

    enum CodingKeys: String, CodingKey {
        case siderealTime = "SiderealTime"
        case rightAscension = "RightAscension"
        case declination = "Declination"
        case siteLatitude = "SiteLatitude"
        case siteLongitude = "SiteLongitude"
        case siteElevation = "SiteElevation"
        case coordinates = "Coordinates"
        case timeToMeridianFlip = "TimeToMeridianFlip"
        case sideOfPier = "SideOfPier"
        case altitude = "Altitude"
        case azimuth = "Azimuth"
        case atPark = "AtPark"
        case trackingRate = "TrackingRate"
        case trackingEnabled = "TrackingEnabled"
        case trackingModes = "TrackingModes"
        case atHome = "AtHome"
        case canFindHome = "CanFindHome"
        case canPark = "CanPark"
        case canSetPark = "CanSetPark"
        case canSetTrackingEnabled = "CanSetTrackingEnabled"
        case canSetDeclinationRate = "CanSetDeclinationRate"
        case canSetRightAscensionRate = "CanSetRightAscensionRate"
        case equatorialSystem = "EquatorialSystem"
        case hasUnknownEpoch = "HasUnknownEpoch"
        case slewing = "Slewing"
        case guideRateRightAscensionArcsecPerSec = "GuideRateRightAscensionArcsecPerSec"
        case guideRateDeclinationArcsecPerSec = "GuideRateDeclinationArcsecPerSec"
        case canMovePrimaryAxis = "CanMovePrimaryAxis"
        case canMoveSecondaryAxis = "CanMoveSecondaryAxis"
        case primaryAxisRates = "PrimaryAxisRates"
        case secondaryAxisRates = "SecondaryAxisRates"
        case supportedActions = "SupportedActions"
        case alignmentMode = "AlignmentMode"
        case canPulseGuide = "CanPulseGuide"
        case isPulseGuiding = "IsPulseGuiding"
        case canSetPierSide = "CanSetPierSide"
        case canSlew = "CanSlew"
        case utcDate = "UTCDate"
        case connected = "Connected"
        case name = "Name"
        case displayName = "DisplayName"
        case deviceId = "DeviceId"
    }

    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        self.altitude = try? container.decodeIfPresent(Double.self, forKey: .altitude)
        self.azimuth = try? container.decodeIfPresent(Double.self, forKey: .azimuth)

        self.siderealTime = try container.decodeIfPresent(Double.self, forKey: .siderealTime)
        self.rightAscension = try container.decodeIfPresent(Double.self, forKey: .rightAscension)
        self.declination = try container.decodeIfPresent(Double.self, forKey: .declination)
        self.siteLatitude = try container.decodeIfPresent(Double.self, forKey: .siteLatitude)
        self.siteLongitude = try container.decodeIfPresent(Double.self, forKey: .siteLongitude)
        self.siteElevation = try container.decodeIfPresent(Double.self, forKey: .siteElevation)
        self.coordinates = try container.decodeIfPresent(Coordinates.self, forKey: .coordinates)
        self.timeToMeridianFlip = try container.decodeIfPresent(
            Double.self, forKey: .timeToMeridianFlip)
        self.sideOfPier = try container.decodeIfPresent(SideOfPier.self, forKey: .sideOfPier)

        self.atPark = try container.decodeIfPresent(Bool.self, forKey: .atPark)
        self.trackingRate = try container.decodeIfPresent(TrackingRate.self, forKey: .trackingRate)
        self.trackingEnabled = try container.decodeIfPresent(Bool.self, forKey: .trackingEnabled)
        self.trackingModes = try container.decodeIfPresent(
            [TrackingMode].self, forKey: .trackingModes)
        self.atHome = try container.decodeIfPresent(Bool.self, forKey: .atHome)
        self.canFindHome = try container.decodeIfPresent(Bool.self, forKey: .canFindHome)
        self.canPark = try container.decodeIfPresent(Bool.self, forKey: .canPark)
        self.canSetPark = try container.decodeIfPresent(Bool.self, forKey: .canSetPark)
        self.canSetTrackingEnabled = try container.decodeIfPresent(
            Bool.self, forKey: .canSetTrackingEnabled)
        self.canSetDeclinationRate = try container.decodeIfPresent(
            Bool.self, forKey: .canSetDeclinationRate)
        self.canSetRightAscensionRate = try container.decodeIfPresent(
            Bool.self, forKey: .canSetRightAscensionRate)
        self.equatorialSystem = try container.decodeIfPresent(Epoch.self, forKey: .equatorialSystem)
        self.hasUnknownEpoch = try container.decodeIfPresent(Bool.self, forKey: .hasUnknownEpoch)
        self.slewing = try container.decodeIfPresent(Bool.self, forKey: .slewing)
        self.guideRateRightAscensionArcsecPerSec = try container.decodeIfPresent(
            Double.self, forKey: .guideRateRightAscensionArcsecPerSec)
        self.guideRateDeclinationArcsecPerSec = try container.decodeIfPresent(
            Double.self, forKey: .guideRateDeclinationArcsecPerSec)
        self.canMovePrimaryAxis = try container.decodeIfPresent(
            Bool.self, forKey: .canMovePrimaryAxis)
        self.canMoveSecondaryAxis = try container.decodeIfPresent(
            Bool.self, forKey: .canMoveSecondaryAxis)
        self.primaryAxisRates = try container.decodeIfPresent(
            [AxisRate].self, forKey: .primaryAxisRates)
        self.secondaryAxisRates = try container.decodeIfPresent(
            [AxisRate].self, forKey: .secondaryAxisRates)
        self.supportedActions = try container.decodeIfPresent(
            [String].self, forKey: .supportedActions)
        self.alignmentMode = try container.decodeIfPresent(Int.self, forKey: .alignmentMode)
        self.canPulseGuide = try container.decodeIfPresent(Bool.self, forKey: .canPulseGuide)
        self.isPulseGuiding = try container.decodeIfPresent(Bool.self, forKey: .isPulseGuiding)
        self.canSetPierSide = try container.decodeIfPresent(Bool.self, forKey: .canSetPierSide)
        self.canSlew = try container.decodeIfPresent(Bool.self, forKey: .canSlew)
        self.utcDate = try? container.decodeIfPresent(Date.self, forKey: .utcDate)
        self.connected = try container.decode(Bool.self, forKey: .connected)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.displayName = try container.decodeIfPresent(String.self, forKey: .displayName)
        self.deviceId = try container.decodeIfPresent(String.self, forKey: .deviceId)
    }

    static var dateFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        return dateFormatter
    }
}
