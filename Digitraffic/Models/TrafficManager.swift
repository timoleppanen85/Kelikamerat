//
//  TrafficManager.swift
//  Digitraffic
//
//  Created by Timo Leppänen on 30.7.2020.
//  Copyright © 2020 Timo Leppänen. All rights reserved.
//

import Foundation

struct TrafficManager {
    let apiUrl = "https://tie.digitraffic.fi/api/v1/data/camera-data"
    
    func performRequest (urlString: String) {
        if let url = URL(string: apiUrl) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print("Error fetching data, \(error!)")
                    return
                }
                
                if let safeData = data {
                    let dataSring = String(data: safeData, encoding: .utf8)
                    print(dataSring!)
                }
            }
            
            task.resume()
        }
    }
}
