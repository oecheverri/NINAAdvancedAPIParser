//
//  NINAResponseStubs.swift
//  NINAAdvancedModelsKit
//
//  Created by Oscar Echeverri on 2024-12-30.
//

enum TestData {
    static let successfulResponseWithTestObject = """
{
    "Response" : {
        "name": "Mike",
        "index": 42,
        "on": true
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
    "Type": "API"
}
""".data(using: .utf8)!
}
