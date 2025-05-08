//
//  PolyLineView.swift
//  Exploring-MapKit
//
//  Created by Ronjie Diafante Man-on on 5/8/25.
//

import SwiftUI
import MapKit

struct PolyLineView: View {
    let simpleStrokeStyle = StrokeStyle(
        lineWidth: 2.5,
        lineCap: .round,
        lineJoin: .round,
        dash: [5, 5]
    )
    let boldDashedStyle = StrokeStyle(
        lineWidth: 4,
        lineCap: .butt,
        lineJoin: .miter,
        dash: [10, 4]
    )
    let subtleDotStyle = StrokeStyle(
        lineWidth: 1.5,
        lineCap: .round,
        lineJoin: .round,
        dash: [2, 6]
    )
    let wavyDashStyle = StrokeStyle(
        lineWidth: 3,
        lineCap: .round,
        lineJoin: .round,
        dash: [8, 3, 4, 3]
    )
    
    let doubleLineStyle = StrokeStyle(
        lineWidth: 5,
        lineCap: .butt,
        lineJoin: .miter,
        dash: [12, 6]
    )
    var strokeStyles: [(name: String, style: StrokeStyle)] {
        [
            ("Simple Dash", simpleStrokeStyle),
            ("Bold Dashed", boldDashedStyle),
            ("Subtle Dot", subtleDotStyle),
            ("Wavy Dash", wavyDashStyle),
            ("Double Line", doubleLineStyle)
        ]
    }
    
    @State private var strokeIndex = 0

    let gradient = Gradient(colors: [.red, .green, .blue])
    var style: StrokeStyle {
        strokeStyles[strokeIndex % strokeStyles.count].style
    }
    var currentStyleName: String {
        strokeStyles[strokeIndex % strokeStyles.count].name
    }
    
    var body: some View {
        Map {
            ForEach(Locations.locationsInSpain) { location in
                Marker(
                    location.name,
                    coordinate: location.coordinate
                )
                .tint(.blue)
            }
            
            MapPolyline(coordinates: Locations.locationsInSpain.coordinates)
                .stroke(gradient, style: style)
        }
        .onTapGesture {
            strokeIndex += 1
        }
    }
}

#Preview {
    PolyLineView()
}
