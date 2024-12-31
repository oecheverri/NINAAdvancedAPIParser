struct CameraInfo: ParseableModel {
    let targetTemp: Double
    let atTargetTemp: Bool
    let canSetTemperature: Bool
    let hasShutter: Bool
    let temperature: Int
    let gain: Int
    let defaultGain: Int
    let electronsPerADU: Int
    let binX: Int
    let bitDepth: Int
    let binY: Int
    let canSetOffset: Bool
    let canGetGain: Bool
    let offsetMin: Int
    let offsetMax: Int
    let offset: Int
    let defaultOffset: Int
    let usbLimit: Int
    let isSubSampleEnabled: Bool
    let cameraState: Int
    let xSize: Int
    let ySize: Int
    let pixelSize: Int
    let battery: Int
    let gainMin: Int
    let gainMax: Int
    let canSetGain: Bool
    let gains: [Int]
    let coolerOn: Bool
    let coolerPower: Int
    let hasDewHeater: Bool
    let dewHeaterOn: Bool
    let canSubSample: Bool
    let subSampleX: Int
    let subSampleY: Int
    let subSampleWidth: Int
    let subSampleHeight: Int
    let temperatureSetPoint: Int
    let readoutModes: [String]
    let readoutMode: Int
    let readoutModeForSnapImages: Int
    let readoutModeForNormalImages: Int
    let isExposing: Bool
    let exposureEndTime: String
    let lastDownloadTime: Int
    let sensorType: Int
    let bayerOffsetX: Int
    let bayerOffsetY: Int
    let binningModes: [BinningMode]
    let exposureMax: Int
    let exposureMin: Int
    let liveViewEnabled: Bool
    let canShowLiveView: Bool
    let supportedActions: [String]
    let canSetUSBLimit: Bool
    let usbLimitMin: Int
    let usbLimitMax: Int
    let connected: Bool
    let name: String
    let displayName: String
    let deviceId: String
}

extension CameraInfo {
    enum CodingKeys: String, CodingKey {
        case targetTemp = "TargetTemp"
        case atTargetTemp = "AtTargetTemp"
        case canSetTemperature = "CanSetTemperature"
        case hasShutter = "HasShutter"
        case temperature = "Temperature"
        case gain = "Gain"
        case defaultGain = "DefaultGain"
        case electronsPerADU = "ElectronsPerADU"
        case binX = "BinX"
        case bitDepth = "BitDepth"
        case binY = "BinY"
        case canSetOffset = "CanSetOffset"
        case canGetGain = "CanGetGain"
        case offsetMin = "OffsetMin"
        case offsetMax = "OffsetMax"
        case offset = "Offset"
        case defaultOffset = "DefaultOffset"
        case usbLimit = "USBLimit"
        case isSubSampleEnabled = "IsSubSampleEnabled"
        case cameraState = "CameraState"
        case xSize = "XSize"
        case ySize = "YSize"
        case pixelSize = "PixelSize"
        case battery = "Battery"
        case gainMin = "GainMin"
        case gainMax = "GainMax"
        case canSetGain = "CanSetGain"
        case gains = "Gains"
        case coolerOn = "CoolerOn"
        case coolerPower = "CoolerPower"
        case hasDewHeater = "HasDewHeater"
        case dewHeaterOn = "DewHeaterOn"
        case canSubSample = "CanSubSample"
        case subSampleX = "SubSampleX"
        case subSampleY = "SubSampleY"
        case subSampleWidth = "SubSampleWidth"
        case subSampleHeight = "SubSampleHeight"
        case temperatureSetPoint = "TemperatureSetPoint"
        case readoutModes = "ReadoutModes"
        case readoutMode = "ReadoutMode"
        case readoutModeForSnapImages = "ReadoutModeForSnapImages"
        case readoutModeForNormalImages = "ReadoutModeForNormalImages"
        case isExposing = "IsExposing"
        case exposureEndTime = "ExposureEndTime"
        case lastDownloadTime = "LastDownloadTime"
        case sensorType = "SensorType"
        case bayerOffsetX = "BayerOffsetX"
        case bayerOffsetY = "BayerOffsetY"
        case binningModes = "BinningModes"
        case exposureMax = "ExposureMax"
        case exposureMin = "ExposureMin"
        case liveViewEnabled = "LiveViewEnabled"
        case canShowLiveView = "CanShowLiveView"
        case supportedActions = "SupportedActions"
        case canSetUSBLimit = "CanSetUSBLimit"
        case usbLimitMin = "USBLimitMin"
        case usbLimitMax = "USBLimitMax"
        case connected = "Connected"
        case name = "Name"
        case displayName = "DisplayName"
        case deviceId = "DeviceId"
    }
}
