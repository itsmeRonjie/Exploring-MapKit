//
//  ParisTitleView.swift
//  Exploring-MapKit
//
//  Created by Ronjie Diafante Man-on on 5/8/25.
//

import SwiftUI

struct ParisTitleView: View {
    var body: some View {
        Text("Explore Paris")
            .font(.largeTitle)
            .bold()
            .padding()
            .foregroundStyle(
                LinearGradient(
                    colors: [.blue, .purple],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .background(.ultraThinMaterial)
            .clipShape(.rect(cornerRadius: 12))
            .shadow(radius: 10)
            .padding()
    }
}

#Preview {
    ParisTitleView()
}
