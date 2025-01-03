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

    static let disconnectedFilterWheelInfoResponse = """
        {
          "Response": {
            "IsMoving": false,
            "Connected": false
          },
          "Error": "",
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
            "ExposureEndTime": "2024-12-31T10:44:01.5213091-05:00",
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

    static let disconnectedCameraInfoResponse = """
        {
          "Response": {
            "offsetMin": 0,
            "offsetMax": 0,
            "CanSetTemperature": false,
            "HasShutter": false,
            "Temperature": 0.0,
            "Gain": -1,
            "DefaultGain": -1,
            "ElectronsPerADU": 0.0,
            "BinX": 0,
            "BitDepth": 0,
            "BinY": 0,
            "CanSetOffset": false,
            "CanGetGain": false,
            "OffsetMin": 0,
            "OffsetMax": 0,
            "Offset": 0,
            "DefaultOffset": -1,
            "USBLimit": 0,
            "IsSubSampleEnabled": false,
            "CameraState": -1,
            "XSize": 0,
            "YSize": 0,
            "PixelSize": 0.0,
            "Battery": 0,
            "GainMin": 0,
            "GainMax": 0,
            "CanSetGain": false,
            "Gains": [],
            "CoolerOn": false,
            "CoolerPower": 0.0,
            "HasDewHeater": false,
            "DewHeaterOn": false,
            "CanSubSample": false,
            "SubSampleX": 0,
            "SubSampleY": 0,
            "SubSampleWidth": 0,
            "SubSampleHeight": 0,
            "TemperatureSetPoint": 0.0,
            "ReadoutMode": 0,
            "ReadoutModeForSnapImages": 0,
            "ReadoutModeForNormalImages": 0,
            "IsExposing": false,
            "ExposureEndTime": "2024-12-31T09:43:06.6599599-05:00",
            "LastDownloadTime": -1.0,
            "SensorType": 0,
            "BayerOffsetX": 0,
            "BayerOffsetY": 0,
            "BinningModes": [],
            "ExposureMax": 0.0,
            "ExposureMin": 0.0,
            "LiveViewEnabled": false,
            "CanShowLiveView": false,
            "CanSetUSBLimit": false,
            "USBLimitMin": 0,
            "USBLimitMax": 0,
            "Connected": false
          },
          "Error": "",
          "StatusCode": 200,
          "Success": true,
          "Type": "API"
        }
        """.data(using: .utf8)!

    static let connectedZwoCameraResponse = """
        {
          "Response": {
            "offsetMin": 0,
            "offsetMax": 120,
            "CanSetTemperature": true,
            "HasShutter": false,
            "Temperature": 14.0,
            "Gain": 158,
            "DefaultGain": 158,
            "ElectronsPerADU": 1.0055222511291504,
            "BinX": 1,
            "BitDepth": 16,
            "BinY": 1,
            "CanSetOffset": true,
            "CanGetGain": true,
            "OffsetMin": 0,
            "OffsetMax": 120,
            "Offset": 25,
            "DefaultOffset": 25,
            "USBLimit": 40,
            "IsSubSampleEnabled": false,
            "CameraState": 0,
            "XSize": 6072,
            "YSize": 4042,
            "PixelSize": 5.94,
            "Battery": -1,
            "GainMin": 0,
            "GainMax": 620,
            "CanSetGain": true,
            "Gains": [],
            "CoolerOn": false,
            "CoolerPower": 0.0,
            "HasDewHeater": true,
            "DewHeaterOn": true,
            "CanSubSample": true,
            "SubSampleX": 0,
            "SubSampleY": 0,
            "SubSampleWidth": 6072,
            "SubSampleHeight": 4042,
            "TemperatureSetPoint": 20.0,
            "ReadoutModes": [
              "Default"
            ],
            "ReadoutMode": 0,
            "ReadoutModeForSnapImages": 0,
            "ReadoutModeForNormalImages": 0,
            "IsExposing": false,
            "ExposureEndTime": "2024-12-31T10:44:01.5213091-05:00",
            "LastDownloadTime": -1.0,
            "SensorType": 2,
            "BayerOffsetX": 0,
            "BayerOffsetY": 0,
            "BinningModes": [
              {
                "X": 1,
                "Y": 1
              },
              {
                "X": 2,
                "Y": 2
              },
              {
                "X": 3,
                "Y": 3
              },
              {
                "X": 4,
                "Y": 4
              }
            ],
            "ExposureMax": 2000.0,
            "ExposureMin": 3.2E-05,
            "LiveViewEnabled": false,
            "CanShowLiveView": false,
            "SupportedActions": [],
            "CanSetUSBLimit": true,
            "USBLimitMin": 40,
            "USBLimitMax": 100,
            "Connected": true,
            "Name": "ZWO ASI2400MC Pro",
            "DisplayName": "ZWO ASI2400MC Pro",
            "DeviceId": "ZWO ASI2400MC Pro"
          },
          "Error": "",
          "StatusCode": 200,
          "Success": true,
          "Type": "API"
        }
        """.data(using: .utf8)!

    //MARK: - Focuser Info Test Data
    static let disconnectedFocuserResponse = """
        {
          "Response": {
            "Position": 0,
            "StepSize": 0.0,
            "Temperature": "NaN",
            "IsMoving": false,
            "IsSettling": false,
            "TempComp": false,
            "TempCompAvailable": false,
            "Connected": false
          },
          "Error": "",
          "StatusCode": 200,
          "Success": true,
          "Type": "API"
        }
        """.data(using: .utf8)!

    static let connectedCelestronFocuserResponse = """
        {
          "Response": {
            "Position": 27556,
            "StepSize": "NaN",
            "Temperature": "NaN",
            "IsMoving": false,
            "IsSettling": false,
            "TempComp": false,
            "TempCompAvailable": false,
            "SupportedActions": [],
            "Connected": true,
            "Name": "Celestron USB Focuser",
            "DisplayName": "Celestron USB Focuser",
            "Description": "Celestron USB Focuser",
            "DriverInfo": "Information about the driver itself. Version: 1.5",
            "DriverVersion": "1.5",
            "DeviceId": "ASCOM.CelestronUsbMotorFocuser.Focuser"
          },
          "Error": "",
          "StatusCode": 200,
          "Success": true,
          "Type": "API"
        }
        """.data(using: .utf8)!

    // MARK: - Mount Info Responses

    static let simulatorMountResponse = """
        {
          "Response": {
            "SiderealTime": 21.21922905209341,
            "RightAscension": 21.210437985417972,
            "Declination": 0.2400201363469705,
            "SiteLatitude": 45.3376666666667,
            "SiteLongitude": -76.4405,
            "SiteElevation": 180.0,
            "RightAscensionString": "21:12:38",
            "DeclinationString": "00° 14' 24\\"",
            "Coordinates": {
              "RA": 21.210437985417972,
              "RAString": "21:12:38",
              "RADegrees": 318.1565697812696,
              "Dec": 0.2400201363469705,
              "DecString": "00° 14' 24\\"",
              "Epoch": 2,
              "DateTime": {
                "Now": "2024-12-31T14:36:03.8433094-05:00",
                "UtcNow": "2024-12-31T19:36:03.8433217Z",
                "MinValue": "0001-01-01T00:00:00",
                "MaxValue": "9999-12-31T23:59:59.9999999"
              }
            },
            "TimeToMeridianFlip": 0.17890054391666665,
            "SideOfPier": 1,
            "Altitude": 44.90220288008495,
            "AltitudeString": "44° 54' 08\\"",
            "Azimuth": 180.18616771806197,
            "AzimuthString": "180° 11' 10\\"",
            "SiderealTimeString": "21:13:09",
            "HoursToMeridianString": "00:00:44",
            "AtPark": false,
            "TrackingRate": {
              "TrackingMode": 0
            },
            "TrackingEnabled": true,
            "TrackingModes": [
              0,
              3,
              1,
              2,
              4,
              5
            ],
            "AtHome": false,
            "CanFindHome": true,
            "CanPark": true,
            "CanSetPark": true,
            "CanSetTrackingEnabled": true,
            "CanSetDeclinationRate": true,
            "CanSetRightAscensionRate": true,
            "EquatorialSystem": 2,
            "HasUnknownEpoch": false,
            "TimeToMeridianFlipString": "00:10:44",
            "Slewing": false,
            "GuideRateRightAscensionArcsecPerSec": 15.0,
            "GuideRateDeclinationArcsecPerSec": 15.0,
            "CanMovePrimaryAxis": true,
            "CanMoveSecondaryAxis": true,
            "PrimaryAxisRates": [
              {
                "Item1": 0.0,
                "Item2": 6.666666666666667
              },
              {
                "Item1": 10.0,
                "Item2": 20.0
              }
            ],
            "SecondaryAxisRates": [
              {
                "Item1": 0.0,
                "Item2": 6.666666666666667
              },
              {
                "Item1": 10.0,
                "Item2": 20.0
              }
            ],
            "SupportedActions": [
              "AssemblyVersionNumber",
              "SlewToHA",
              "AvailableTimeInThisPointingState",
              "TimeUntilPointingStateCanChange"
            ],
            "AlignmentMode": 2,
            "CanPulseGuide": true,
            "IsPulseGuiding": false,
            "CanSetPierSide": true,
            "CanSlew": true,
            "UTCDate": "2024-12-31T19:36:02.375",
            "Connected": true,
            "Name": "Telescope Simulator for .NET",
            "DisplayName": "Telescope Simulator for .NET",
            "DeviceId": "ASCOM.Simulator.Telescope"
          },
          "Error": "",
          "StatusCode": 200,
          "Success": true,
          "Type": "API"
        }
        """.data(using: .utf8)!

    static let disconnectedMountResponse = """
        {
          "Response": {
            "SiderealTime": 0.0,
            "RightAscension": 0.0,
            "Declination": 0.0,
            "SiteLatitude": 0.0,
            "SiteLongitude": 0.0,
            "SiteElevation": 0.0,
            "TimeToMeridianFlip": 0.0,
            "SideOfPier": 0,
            "Altitude": "NaN",
            "AltitudeString": "",
            "Azimuth": "NaN",
            "AzimuthString": "",
            "AtPark": false,
            "TrackingRate": {
              "TrackingMode": 0
            },
            "TrackingEnabled": false,
            "AtHome": false,
            "CanFindHome": false,
            "CanPark": false,
            "CanSetPark": false,
            "CanSetTrackingEnabled": false,
            "CanSetDeclinationRate": false,
            "CanSetRightAscensionRate": false,
            "EquatorialSystem": 0,
            "HasUnknownEpoch": false,
            "Slewing": false,
            "GuideRateRightAscensionArcsecPerSec": 0.0,
            "GuideRateDeclinationArcsecPerSec": 0.0,
            "CanMovePrimaryAxis": false,
            "CanMoveSecondaryAxis": false,
            "AlignmentMode": 0,
            "CanPulseGuide": false,
            "IsPulseGuiding": false,
            "CanSetPierSide": false,
            "CanSlew": false,
            "UTCDate": "0001-01-01T00:00:00",
            "Connected": false
          },
          "Error": "",
          "StatusCode": 200,
          "Success": true,
          "Type": "API"
        }
        """.data(using: .utf8)!
}
