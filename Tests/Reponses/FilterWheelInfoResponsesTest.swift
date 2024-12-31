//
//  FilterWheelInfoResponsesTest.swift
//  NINAAdvancedModelsKit
//
//  Created by Oscar Echeverri on 2024-12-30.
//

import Foundation
import Testing

@testable import NINAAdvancedModelsKit

struct FilterWheelInfoResponsesTest {
    @Test
    func parsesFilterWheelInfoResponse() throws {
        let decoder = JSONDecoder()
        let response: NINAResponse<FilterWheelInfo> =
            try decoder.decode(
                NINAResponse<FilterWheelInfo>.self,
                from: TestData.filterWheelInfoResponse
            )

        #expect(response.response?.connected == true)
        #expect(response.response?.name == "MyFilterWheelName")
        #expect(response.response?.displayName == "MyFilterWheelDisplayName")
        #expect(response.response?.description == "MyFilterWheelDescription")
        #expect(response.response?.driverInfo == "MyFilterWheelDrivers")
        #expect(response.response?.driverVersion == "1.0.0")
        #expect(response.response?.deviceId == "asdfgh123456")
        #expect(response.response?.isMoving == true)
        #expect(response.response?.supportedActions == ["Action1", "Action2"])
        #expect(response.response?.selectedFilter?.name == "Red")
        #expect(response.response?.selectedFilter?.id == 42)
        #expect(response.response?.availableFilters?.count == 2)
        #expect(response.response?.availableFilters?[0].name == "Red")
        #expect(response.response?.availableFilters?[0].id == 42)
        #expect(response.response?.availableFilters?[1].name == "Green")
        #expect(response.response?.availableFilters?[1].id == 43)

    }

    @Test func handlesDisconnectedFilterWheel() throws {
        let decoder = JSONDecoder()
        let response: NINAResponse<FilterWheelInfo> =
            try decoder.decode(
                NINAResponse<FilterWheelInfo>.self,
                from: TestData.disconnectedFilterWheelInfoResponse
            )

        #expect(response.response?.connected == false)
    }
}
