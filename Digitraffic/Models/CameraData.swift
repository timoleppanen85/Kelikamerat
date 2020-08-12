//
//  CameraData.swift
//  Digitraffic
//
//  Created by Timo Leppänen on 2.8.2020.
//  Copyright © 2020 Timo Leppänen. All rights reserved.
//

// Generated with app.quicktype.io

// MARK: - Results
struct Results: Codable {
    let dataUpdatedTime: String
    let cameraStations: [CameraStation]
}

// MARK: - CameraStation
struct CameraStation: Codable, Identifiable {
    let id: String
    let roadStationID: Int
    let nearestWeatherStationID: Int?
    let cameraPresets: [CameraPreset]

    enum CodingKeys: String, CodingKey {
        case id
        case roadStationID = "roadStationId"
        case nearestWeatherStationID = "nearestWeatherStationId"
        case cameraPresets
    }
}

// MARK: - CameraPreset
struct CameraPreset: Codable, Identifiable {
    let id: String
    let presentationName: String?
    let imageURL: String
    let measuredTime: String?

    enum CodingKeys: String, CodingKey {
        case id
        case presentationName
        case imageURL = "imageUrl"
        case measuredTime
    }
}
