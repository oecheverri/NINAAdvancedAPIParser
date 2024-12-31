//
//  NINAResponseStubs.swift
//  NINAAdvancedModelsKit
//
//  Created by Oscar Echeverri on 2024-12-30.
//

enum TestData {

    // MARK: - Test Data for generic NINA Responses
    static let successfulResponseWithTestObject = """
        {
            "Response" : {
                "Name": "Mike",
                "Index": 42,
                "On": true
            },
            "Error": "None",
            "StatusCode": 42,
            "Success": true,
            "Type": "API"
        }

        """.data(using: .utf8)!

    static let errorResponse = """
        {
            "Error": "MockError",
            "StatusCode": 500,
            "Success": false,
            "Type": "API",
            "Response": "Something bad happened"
        }
        """.data(using: .utf8)!

    // MARK: - Test Data for FilterWheelInfo Responses
    static let filterWheelInfoResponse = """
        {
          "Response": {
            "Connected": true,
            "Name": "MyCameraName",
            "DisplayName": "MyCameraDisplayName",
            "Description": "MyCameraDescription",
            "DriverInfo": "MyCameraDrivers",
            "DriverVersion": "1.0.0",
            "DeviceId": "asdfgh123456",
            "IsMoving": true,
            "SupportedActions": [
              "Action1", "Action2"
            ],
            "SelectedFilter": {
              "Name": "Red",
              "Id": 42
            },
            "AvailableFilters": [
              {
                "Name": "Red",
                "Id": 42
              },
              {
                "Name": "Green",
                "Id": 43
              }
            ]
          },
          "Error": "None",
          "StatusCode": 200,
          "Success": true,
          "Type": "API"
        }
        """.data(using: .utf8)!
}
