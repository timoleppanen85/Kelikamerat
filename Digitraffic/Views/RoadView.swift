//
//  RoadView.swift
//  Digitraffic
//
//  Created by Timo Leppänen on 8.8.2020.
//  Copyright © 2020 Timo Leppänen. All rights reserved.
//

import SwiftUI

struct RoadView: View {
    
    @EnvironmentObject var networkManager: NetworkManager
    let road: String
    let roadId: String
    
    var body: some View {
        List(networkManager.tempRoads) { road in
            NavigationLink(destination: DetailView(imageUrl: URL(string: road.imageUrl)!)) {
                Text(road.presentationName ?? "Name not available")
            }
        }
        .onAppear() {
            self.networkManager.fetchPresets(roadId: self.road)
        }
        .navigationBarTitle(road)
    }
}

struct RoadView_Previews: PreviewProvider {
    static var previews: some View {
        RoadView(road: "Test", roadId: "100")
    }
}
