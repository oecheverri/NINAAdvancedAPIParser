//
//  CameraInfoResponsesTests.swift
//  NINAAdvancedModelsKit
//
//  Created by Oscar Echeverri on 2024-12-30.
//

import Foundation
import Testing

@testable import NINAAdvancedAPIModelsKit

struct CameraInfoResponsesTests {

    @Test
    func testCanDecodeZWOCameraInfoResponse() throws {

        let dateFormatter = CameraInfo.dateFormatter

        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(dateFormatter)

        let response = try decoder.decode(
            NINAResponse<CameraInfo>.self, from: TestData.connectedZwoCameraResponse)

        let cameraInfo = try #require(response.response)
        #expect(cameraInfo.name == "ZWO ASI2400MC Pro")
        #expect(cameraInfo.connected == true)

    }
    @Test
    func testCanParseCameraInfoResponses() throws {
        let isoDateFormatter = ISO8601DateFormatter()
        isoDateFormatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSSSSSXXXXX"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(dateFormatter)

        let expectedDate = try #require(
            isoDateFormatter.date(from: "2024-12-31T10:44:01.5213091-05:00"))
        let response = try decoder.decode(
            NINAResponse<CameraInfo>.self, from: TestData.cameraInfoResponse)
        let modelObject = try #require(response.response, "Missing model object in response")

        #expect(modelObject.targetTemp == 42.0)
        #expect(modelObject.atTargetTemp == true)
        #expect(modelObject.canSetTemperature == true)
        #expect(modelObject.hasShutter == true)
        #expect(modelObject.temperature == 42)
        #expect(modelObject.gain == 42)
        #expect(modelObject.defaultGain == 42)
        #expect(modelObject.electronsPerADU == 42)
        #expect(modelObject.binX == 42)
        #expect(modelObject.binY == 42)
        #expect(modelObject.bitDepth == 42)
        #expect(modelObject.binningModes?.count == 1)
        #expect(modelObject.binningModes?[0].name == "4x4")
        #expect(modelObject.binningModes?[0].x == 42)
        #expect(modelObject.binningModes?[0].y == 42)
        #expect(modelObject.exposureMin == 42)
        #expect(modelObject.exposureMax == 42)
        #expect(modelObject.exposureEndTime == expectedDate)
        #expect(modelObject.lastDownloadTime == 42)
        #expect(modelObject.sensorType == 42)
        #expect(modelObject.bayerOffsetX == 42)
        #expect(modelObject.bayerOffsetY == 42)
        #expect(modelObject.isExposing == true)
        #expect(modelObject.liveViewEnabled == true)
        #expect(modelObject.canShowLiveView == true)
        #expect(modelObject.supportedActions?.count == 1)
        #expect(modelObject.supportedActions?[0] == "Record")
        #expect(modelObject.canSetUSBLimit == true)
        #expect(modelObject.usbLimitMin == 42)
        #expect(modelObject.usbLimitMax == 42)
        #expect(modelObject.connected == true)
        #expect(modelObject.name == "MyTestCameraName")
        #expect(modelObject.displayName == "MyTestCameraDisplayName")
        #expect(modelObject.deviceId == "asdfgh123456")
        #expect(modelObject.canSetOffset == true)
        #expect(modelObject.canGetGain == true)
        #expect(modelObject.offsetMin == 42)
        #expect(modelObject.offsetMax == 42)
        #expect(modelObject.offset == 42)
        #expect(modelObject.defaultOffset == 42)
        #expect(modelObject.usbLimit == 42)
        #expect(modelObject.isSubSampleEnabled == true)
        #expect(modelObject.cameraState == 42)

    }

    @Test func handlesDisconnectedCameraInfo() async throws {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSSSSSXXXXX"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(dateFormatter)
        let response = try decoder.decode(
            NINAResponse<CameraInfo>.self, from: TestData.disconnectedCameraInfoResponse)

        #expect(response.response?.connected == false)

    }
}
