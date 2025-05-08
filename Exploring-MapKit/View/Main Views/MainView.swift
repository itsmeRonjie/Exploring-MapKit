//
//  ContentView.swift
//  Exploring-MapKit
//
//  Created by Ronjie Diafante Man-on on 5/8/25.
//

import SwiftUI
import MapKit

struct MainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    NavigationLink {
                        SimpleMapView()
                            .toolbarBackground(.hidden, for: .navigationBar)
                    } label: {
                        Text("Simple Map View")
                    }
                    
                    
                    NavigationLink {
                        PolyLineView()
                            .toolbarBackground(.hidden, for: .navigationBar)
                    } label: {
                        Text("PolyLine")
                    }
                    
                    NavigationLink {
                        ParisView()
                            .toolbarBackground(.hidden, for: .navigationBar)
                    } label: {
                        Text("Paris")
                    }
                    
                    NavigationLink {
                        MapControls()
                            .toolbarBackground(.hidden, for: .navigationBar)
                    } label: {
                        Text("Map Controls")
                    }
                    
                    NavigationLink {
                        MapStyleView(center: .paris)
                            .toolbarBackground(.hidden, for: .navigationBar)
                    } label: {
                        Text("Map Style")
                    }
                    
                    NavigationLink {
                        LookAroundView(
                            location: .paris,
                            text: "Exploring Paris"
                        )
                        .toolbarBackground(.hidden, for: .navigationBar)
                    } label: {
                        Text("Look Around")
                    }
                }
            }
            .navigationTitle("Exploring MapKit")
        }
    }
}

#Preview {
    MainView()
}
