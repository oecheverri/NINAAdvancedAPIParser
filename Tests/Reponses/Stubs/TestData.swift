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
            "Name": "MyFilterWheelName",
            "DisplayName": "MyFilterWheelDisplayName",
            "Description": "MyFilterWheelDescription",
            "DriverInfo": "MyFilterWheelDrivers",
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
    // MARK: - Test Data for CameraInfo Responses
    static let cameraInfoResponse = """
        {
          "Response": {
            "TargetTemp": 42.0,
            "AtTargetTemp": true,
            "CanSetTemperature": true,
            "HasShutter": true,
            "Temperature": 42,
            "Gain": 42,
            "DefaultGain": 42,
            "ElectronsPerADU": 42,
            "BinX": 42,
            "BitDepth": 42,
            "BinY": 42,
            "CanSetOffset": true,
            "CanGetGain": true,
            "OffsetMin": 42,
            "OffsetMax": 42,
            "Offset": 42,
            "DefaultOffset": 42,
            "USBLimit": 42,
            "IsSubSampleEnabled": true,
            "CameraState": 42,
            "XSize": 42,
            "YSize": 42,
            "PixelSize": 42,
            "Battery": 42,
            "GainMin": 0,
            "GainMax": 500,
            "CanSetGain": true,
            "Gains": [0, 42, 200, 300, 500],
            "CoolerOn": true,
            "CoolerPower": 42,
            "HasDewHeater": true,
            "DewHeaterOn": true,
            "CanSubSample": true,
            "SubSampleX": 42,
            "SubSampleY": 42,
            "SubSampleWidth": 42,
            "SubSampleHeight": 42,
            "TemperatureSetPoint": 42,
            "ReadoutModes": [
              "123", "42"
            ],
            "ReadoutMode": 42,
            "ReadoutModeForSnapImages": 42,
            "ReadoutModeForNormalImages": 42,
            "IsExposing": true,
            "ExposureEndTime": "300",
            "LastDownloadTime": 42,
            "SensorType": 42,
            "BayerOffsetX": 42,
            "BayerOffsetY": 42,
            "BinningModes": [
              {
                "Name": "4x4",
                "X": 42,
                "Y": 42
              }
            ],
            "ExposureMax": 42,
            "ExposureMin": 42,
            "LiveViewEnabled": true,
            "CanShowLiveView": true,
            "SupportedActions": [
              "Record"
            ],
            "CanSetUSBLimit": true,
            "USBLimitMin": 42,
            "USBLimitMax": 42,
            "Connected": true,
            "Name": "MyTestCameraName",
            "DisplayName": "MyTestCameraDisplayName",
            "DeviceId": "asdfgh123456"
          },
          "Error": "None",
          "StatusCode": 220,
          "Success": true,
          "Type": "API"
        }
        """.data(using: .utf8)!
}
