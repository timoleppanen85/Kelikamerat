//
//  CityView.swift
//  Digitraffic
//
//  Created by Timo Leppänen on 8.8.2020.
//  Copyright © 2020 Timo Leppänen. All rights reserved.
//

import SwiftUI

struct CityView: View {
    
    @EnvironmentObject var networkManager: NetworkManager
    let municipality: String
    
    var body: some View {
        List(networkManager.roadNames, id: \.self) { road in
            NavigationLink(destination: RoadView(road: road, roadId: "null")) {
                Text(road)
            }
        }
        .navigationBarTitle(municipality)
        .onAppear() {
            self.networkManager.fetchRoadNames(selectedMunicipality: self.municipality)
        }
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView(municipality: "Test")
    }
}
