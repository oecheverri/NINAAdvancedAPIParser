//
//  NINAResponsesTest.swift
//  NINAAdvancedAPIModelsKit
//
//  Created by Oscar Echeverri on 2024-12-30.
//

import Foundation
import Testing

@testable import NINAAdvancedAPIModelsKit

struct NINAResponsesTest {

    @Test
    func parsesSuccesfulResponseCorrectly() throws {
        let decoder = JSONDecoder()
        let response: NINAResponse<TestObject> = try decoder.decode(
            NINAResponse<TestObject>.self, from: TestData.successfulResponseWithTestObject)
        #expect(response.error == "None")
        #expect(response.statusCode == 42)
        #expect(response.success == true)
        #expect(response.type == "API")

        #expect(response.response?.name == "Mike")
        #expect(response.response?.index == 42)
        #expect(response.response?.on == true)
    }

    @Test
    func parsesErrorResponseCorrectly() throws {
        let decoder = JSONDecoder()
        let response: NINAResponse<String> = try decoder.decode(
            NINAResponse<String>.self, from: TestData.errorResponse)
        #expect(response.error == "MockError")
        #expect(response.statusCode == 500)
        #expect(response.success == false)
        #expect(response.type == "API")
        #expect(response.response == "Something bad happened")
    }

}

struct TestObject: ParseableModel {
    let name: String
    let index: Int
    let on: Bool

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case index = "Index"
        case on = "On"
    }
}
