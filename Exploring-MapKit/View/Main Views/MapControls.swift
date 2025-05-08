//
//  MapControls.swift
//  Exploring-MapKit
//
//  Created by Ronjie Diafante Man-on on 5/8/25.
//

import SwiftUI
import MapKit

struct MapControls: View {
    let columbia: CLLocationCoordinate2D = .columbiaUniversity
    
    @State private var position: MapCameraPosition = .userLocation(fallback: .automatic)
    private let initialPosition: MapCameraPosition = .userLocation(fallback: .automatic)
    
    var body: some View {
        VStack {
            Map(position: $position) {
                Marker("Columbia University", coordinate: columbia)
            }
            .mapControls {
                MapScaleView()
                
                MapCompass()
                
                MapPitchToggle()
            }
            
            Button("Reset Map Position") {
                withAnimation {
                    position = initialPosition
                }
            }.buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    MapControls()
}
