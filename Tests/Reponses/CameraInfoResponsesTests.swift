//
//  CameraInfoResponsesTests.swift
//  NINAAdvancedModelsKit
//
//  Created by Oscar Echeverri on 2024-12-30.
//

import Foundation
import Testing

@testable import NINAAdvancedModelsKit

struct CameraInfoResponsesTests {

    @Test
    func testCanParseCameraInfoResponses() throws {
        let decoder = JSONDecoder()
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
        #expect(modelObject.binningModes.count == 1)
        #expect(modelObject.binningModes[0].name == "4x4")
        #expect(modelObject.binningModes[0].x == 42)
        #expect(modelObject.binningModes[0].y == 42)
        #expect(modelObject.exposureMin == 42)
        #expect(modelObject.exposureMax == 42)
        #expect(modelObject.exposureEndTime == "300")
        #expect(modelObject.lastDownloadTime == 42)
        #expect(modelObject.sensorType == 42)
        #expect(modelObject.bayerOffsetX == 42)
        #expect(modelObject.bayerOffsetY == 42)
        #expect(modelObject.isExposing == true)
        #expect(modelObject.liveViewEnabled == true)
        #expect(modelObject.canShowLiveView == true)
        #expect(modelObject.supportedActions.count == 1)
        #expect(modelObject.supportedActions[0] == "Record")
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
}
