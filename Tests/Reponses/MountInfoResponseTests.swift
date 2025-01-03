//
//  MountInfoTests.swift
//  NINAAdvancedModelsKit
//
//  Created by Oscar Echeverri on 2025-01-01.
//

import Foundation
import Testing

@testable import NINAAdvancedAPIModelsKit

struct MountInfoResponseTests {

    @Test
    func testHandlesSuccessfulSimulatorResponse() throws {

        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(MountInfo.dateFormatter)

        let response = try decoder.decode(
            NINAResponse<MountInfo>.self,
            from: TestData.simulatorMountResponse
        )

        let expectedDate = Calendar.current.date(
            from: .init(
                timeZone: .gmt,
                year: 2024,
                month: 12,
                day: 31,
                hour: 19,
                minute: 36,
                second: 2,
                nanosecond: 375_000_000
            )
        )

        let mountInfo = try #require(response.response)

        #expect(mountInfo.siderealTime == 21.21922905209341)
        #expect(mountInfo.rightAscension == 21.210437985417972)
        #expect(mountInfo.declination == 0.2400201363469705)
        #expect(mountInfo.siteLatitude == 45.3376666666667)
        #expect(mountInfo.siteLongitude == -76.4405)
        #expect(mountInfo.siteElevation == 180.0)

        let coordinates = try #require(mountInfo.coordinates)
        #expect(coordinates.ra == 21.210437985417972)
        #expect(coordinates.dec == 0.2400201363469705)
        #expect(coordinates.epoch == .J2000)

        let dateTime = try #require(coordinates.dateTime)
        #expect(dateTime.now == "2024-12-31T14:36:03.8433094-05:00")
        #expect(dateTime.utcNow == "2024-12-31T19:36:03.8433217Z")

        #expect(mountInfo.timeToMeridianFlip == 0.17890054391666665)
        #expect(mountInfo.sideOfPier == .West)
        #expect(mountInfo.altitude == 44.90220288008495)
        #expect(mountInfo.azimuth == 180.18616771806197)
        #expect(mountInfo.atPark == false)
        #expect(mountInfo.trackingRate?.trackingMode == .Sidereal)
        #expect(mountInfo.trackingEnabled == true)

        #expect(
            mountInfo.trackingModes == [
                .Sidereal,
                .King,
                .Lunar,
                .Solar,
                .Custom,
                .Stopped,
            ]
        )
        #expect(mountInfo.atHome == false)
        #expect(mountInfo.canFindHome == true)
        #expect(mountInfo.canPark == true)
        #expect(mountInfo.canSetPark == true)
        #expect(mountInfo.canSetTrackingEnabled == true)
        #expect(mountInfo.canSetDeclinationRate == true)
        #expect(mountInfo.canSetRightAscensionRate == true)
        #expect(mountInfo.equatorialSystem == .J2000)
        #expect(mountInfo.hasUnknownEpoch == false)
        #expect(mountInfo.slewing == false)
        #expect(mountInfo.guideRateDeclinationArcsecPerSec == 15.0)
        #expect(mountInfo.guideRateRightAscensionArcsecPerSec == 15.0)
        #expect(mountInfo.canMovePrimaryAxis == true)
        #expect(mountInfo.canMoveSecondaryAxis == true)
        #expect(mountInfo.primaryAxisRates?[0].item1 == 0.0)
        #expect(mountInfo.primaryAxisRates?[0].item2 == 6.666666666666667)
        #expect(mountInfo.primaryAxisRates?[1].item1 == 10.0)
        #expect(mountInfo.primaryAxisRates?[1].item2 == 20.0)
        #expect(mountInfo.secondaryAxisRates?[0].item1 == 0.0)
        #expect(mountInfo.secondaryAxisRates?[0].item2 == 6.666666666666667)
        #expect(mountInfo.secondaryAxisRates?[1].item1 == 10.0)
        #expect(mountInfo.secondaryAxisRates?[1].item2 == 20.0)
        #expect(
            mountInfo.supportedActions == [
                "AssemblyVersionNumber",
                "SlewToHA",
                "AvailableTimeInThisPointingState",
                "TimeUntilPointingStateCanChange",
            ]
        )
        #expect(mountInfo.alignmentMode == 2)
        #expect(mountInfo.canPulseGuide == true)
        #expect(mountInfo.isPulseGuiding == false)
        #expect(mountInfo.canSetPierSide == true)
        #expect(mountInfo.canSlew == true)
        #expect(mountInfo.utcDate == expectedDate)
        #expect(mountInfo.connected == true)
        #expect(mountInfo.name == "Telescope Simulator for .NET")
        #expect(mountInfo.displayName == "Telescope Simulator for .NET")
        #expect(mountInfo.deviceId == "ASCOM.Simulator.Telescope")

    }

    @Test
    func handlesDisconnectedMount() throws {
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .formatted(MountInfo.dateFormatter)

        let response = try jsonDecoder.decode(
            NINAResponse<MountInfo>.self, from: TestData.disconnectedMountResponse)
        let mountInfo = try #require(response.response)

        #expect(mountInfo.connected == false)

    }
}
