//
//  FocuserInfoResponsesTests.swift
//  NINAAdvancedModelsKit
//
//  Created by Oscar Echeverri on 2024-12-31.
//

import Foundation
import Testing

@testable import NINAAdvancedAPIModelsKit

struct FocuserInfoResponsesTests {

    @Test
    func testParsesFocuserInfoResponse() throws {
        let response = try JSONDecoder().decode(
            NINAResponse<FocuserInfo>.self, from: TestData.connectedCelestronFocuserResponse)

        let focuserInfo = try #require(response.response)

        #expect(focuserInfo.position == 27556)
        #expect(focuserInfo.stepSize == nil)
        #expect(focuserInfo.temperature == nil)
        #expect(focuserInfo.isMoving == false)
        #expect(focuserInfo.isSettling == false)
        #expect(focuserInfo.tempComp == false)
        #expect(focuserInfo.tempCompAvailable == false)
        #expect(focuserInfo.supportedActions?.isEmpty == true)
        #expect(focuserInfo.connected == true)
        #expect(focuserInfo.name == "Celestron USB Focuser")
        #expect(focuserInfo.displayName == "Celestron USB Focuser")
        #expect(focuserInfo.description == "Celestron USB Focuser")
        #expect(focuserInfo.driverInfo == "Information about the driver itself. Version: 1.5")
        #expect(focuserInfo.driverVersion == "1.5")
        #expect(focuserInfo.deviceId == "ASCOM.CelestronUsbMotorFocuser.Focuser")

    }

    @Test
    func testHandlesDisconnectedFocuserInfo() throws {
        let response = try JSONDecoder().decode(
            NINAResponse<FocuserInfo>.self, from: TestData.disconnectedFocuserResponse)

        let focuserInfo = try #require(response.response)
        #expect(focuserInfo.connected == false)

    }

}
