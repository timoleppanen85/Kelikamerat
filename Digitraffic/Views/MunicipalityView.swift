//
//  MunicipalityView.swift
//  Digitraffic
//
//  Created by Timo Leppänen on 6.8.2020.
//  Copyright © 2020 Timo Leppänen. All rights reserved.
//

import SwiftUI

struct MunicipalityView: View {
    
    @EnvironmentObject var networkManager: NetworkManager
    let province: String
    
    var body: some View {
        
        List (networkManager.municipalityArray, id: \.self) { municipality in
            NavigationLink(destination: CityView(municipality: municipality)) {
                Text(municipality)
            }
        }
        .navigationBarTitle(province)
        .onAppear() {
            self.networkManager.fetchMunicipalities(selectedProvince: self.province)
        }
    }
}

struct MunicipalityView_Previews: PreviewProvider {
    static var previews: some View {
        MunicipalityView(province: "Test")
    }
}
