//
//  ControlsView.swift
//  Exploring-MapKit
//
//  Created by Ronjie Diafante Man-on on 5/8/25.
//

import SwiftUI

struct ControlsView: View {
    @Binding var delta: Double
    
    var body: some View {
        VStack {
            ParisTitleView()
            
            Spacer()
            
            ZoomSliderView(delta: $delta)
        }
    }
}

#Preview {
    ControlsView(delta: .constant(0.1))
}
