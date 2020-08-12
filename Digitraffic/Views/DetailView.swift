//
//  DetailView.swift
//  Digitraffic
//
//  Created by Timo Leppänen on 2.8.2020.
//  Copyright © 2020 Timo Leppänen. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let imageUrl: URL
    
    var body: some View {
        AsyncImage(url: imageUrl, placeholder: Text("Loading..."))
            .aspectRatio(contentMode: .fit)
    }
}
