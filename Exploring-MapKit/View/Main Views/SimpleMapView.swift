//
//  SimpleMapView.swift
//  Exploring-MapKit
//
//  Created by Ronjie Diafante Man-on on 5/8/25.
//

import SwiftUI
import MapKit

struct SimpleMapView: View {
    var body: some View {
        Map {
            ForEach(Locations.locationsInSpain) { location in
                Marker(
                    location.name,
                    coordinate: location.coordinate
                )
                .tint(.blue)
            }
        }
    }
}

#Preview {
    SimpleMapView()
}

