//
//  GuiderInfoResponsesTests.swift
//  NINAAdvancedAPIModelsKit
//
//  Created by Oscar Echeverri on 2025-01-03.
//

import Foundation
import Testing

@testable import NINAAdvancedAPIModelsKit

struct GuiderInfoResponsesTests {

    @Test
    func handlesGuiderInfoResponse() throws {
        let response = try JSONDecoder().decode(
            NINAResponse<GuiderInfo>.self, from: TestData.simulatedGuiderConnectedResponse)
        let guiderInfo = try #require(response.response)

        // Look for the test data in TestData.simulatedGuiderConnectedResponse
        #expect(guiderInfo.canClearCalibration == true)
        #expect(guiderInfo.canSetShiftRate == true)
        #expect(guiderInfo.canGetLockPosition == true)
        #expect(guiderInfo.supportedActions == [])

        let errors = try #require(guiderInfo.rmsError)
        #expect(errors.ra.pixel == 0.10499843892319798)
        #expect(errors.ra.arcseconds == 0.10828699003027253)
        #expect(errors.dec.pixel == 0.12562627683930966)
        #expect(errors.dec.arcseconds == 0.12956089182991684)
        #expect(errors.total.pixel == 0.16372731479144037)
        #expect(errors.total.arcseconds == 0.16885525429070827)
        #expect(errors.peakRA.pixel == 0.262)
        #expect(errors.peakRA.arcseconds == 0.27020584000000003)
        #expect(errors.peakDec.pixel == 0.42)
        #expect(errors.peakDec.arcseconds == 0.4331544)

        #expect(guiderInfo.pixelScale == 1.03132)
        #expect(guiderInfo.connected == true)
        #expect(guiderInfo.name == "PHD2")
        #expect(guiderInfo.displayName == "PHD2")
        #expect(guiderInfo.description == "PHD2 Guider")
        #expect(guiderInfo.driverInfo == "PHD2 Guider")
        #expect(guiderInfo.driverVersion == "1.0")
        #expect(guiderInfo.deviceId == "PHD2_Single")
    }

    @Test
    func handlesDisconnectedGuider() throws {
        let response = try JSONDecoder().decode(
            NINAResponse<GuiderInfo>.self, from: TestData.simulatedGuiderDisconnectedRepsonse)
        let guiderInfo = try #require(response.response)

        #expect(guiderInfo.connected == false)
    }

}
