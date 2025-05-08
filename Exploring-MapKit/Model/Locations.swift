//
//  Locations.swift
//  Exploring-MapKit
//
//  Created by Ronjie Diafante Man-on on 5/8/25.
//

import Foundation
import MapKit

struct Locations: Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    let address: String
    var coordinate: CLLocationCoordinate2D {
        .init(
            latitude: latitude,
            longitude: longitude
        )
    }
}

extension Array where Element == Locations {
    var coordinates: [CLLocationCoordinate2D] {
        self.map { $0.coordinate }
    }
}

extension Locations {
    static let monteSantiago = Locations(
        name: "Monte Santiago",
        latitude: 42.9903,
        longitude: -2.9875,
        address: "Burgos, Castilla y León, Spain"
    )
    
    static let gorbeaNaturalPark = Locations(
        name: "Gorbea Natural Park",
        latitude: 43.0500,
        longitude: -2.8333,
        address: "Araba/Álava, Basque Country, Spain"
    )
    
    static let otzarretaForest = Locations(
        name: "Otzarreta Forest",
        latitude: 43.0313,
        longitude: -2.7291,
        address: "Zeanuri, Bizkaia, Basque Country, Spain"
    )
    
    static let sanJuanDeGaztelugatxe = Locations(
        name: "San Juan de Gaztelugatxe",
        latitude: 43.4487,
        longitude: -2.7849,
        address: "Bermeo, Bizkaia, Basque Country, Spain"
    )
    
    static let urkiolaNaturalPark = Locations(
        name: "Urkiola Natural Park",
        latitude: 43.1206,
        longitude: -2.6358,
        address: "Durangaldea, Bizkaia, Basque Country, Spain"
    )
    
    static let playaDeLaga = Locations(
        name: "Playa de Laga",
        latitude: 43.4048,
        longitude: -2.6572,
        address: "Ibarrangelu, Bizkaia, Basque Country, Spain"
    )
    
    static let zumaiaFlysch = Locations(
        name: "Zumaia Flysch",
        latitude: 43.2953,
        longitude: -2.2581,
        address: "Zumaia, Gipuzkoa, Basque Country, Spain"
    )
    
    static let pagoetaNaturalPark = Locations(
        name: "Pagoeta Natural Park",
        latitude: 43.2435,
        longitude: -2.1497,
        address: "Aia, Gipuzkoa, Basque Country, Spain"
    )
    
    static let gaztelugatxe = Locations(
        name: "Gaztelugatxe",
        latitude: 43.4500,
        longitude: -2.7800,
        address: "Bermeo, Bizkaia, Basque Country, Spain"
    )
    
    static let locationsInSpain: [Locations] = [
        .monteSantiago,
        .gorbeaNaturalPark,
        .otzarretaForest,
        .sanJuanDeGaztelugatxe,
        .urkiolaNaturalPark,
        .playaDeLaga,
        .zumaiaFlysch,
        .pagoetaNaturalPark,
        .gaztelugatxe
    ]
}
