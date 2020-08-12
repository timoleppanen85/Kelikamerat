//
//  ContentView.swift
//  Digitraffic
//
//  Created by Timo Leppänen on 30.7.2020.
//  Copyright © 2020 Timo Leppänen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var networkManager: NetworkManager
    
    var body: some View {       
        NavigationView {
            List{
                ForEach(networkManager.provinceArray, id: \.self) { province in
                    NavigationLink(destination: MunicipalityView(province: province)) {
                        Text(province)
                    }
                }
            }
            .navigationBarTitle("Kelikamerat")
            .onAppear {
                self.networkManager.fetchData()
                self.networkManager.fetchMetadata()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
