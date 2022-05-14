//
//  Locations.swift
//  Trekor
//
//  Created by Ahmed Shaban on 13/05/2022.
// responsible for storing all locations somewhere safe in our app

import Foundation

// classes are designed to be shared
// struct displays a copy of original data
// ObservableObject means swiftUI will watch any changes in class Locations
// and share it with the whole world

class Locations: ObservableObject {
    
        let places: [Location]
    
        var primary: Location {
            places[0]
        }
        // to test the app view Locations.primary
        
    
    
        init() {
            let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
                // ! here means trust me it will definitely works
                // and if it doesn't crash the app
                // url loads data in locations.json file and it must be allocated
                // in our app to prevent the crash!
            
            let data = try! Data(contentsOf: url)
                // ! AKA the same
                // ! means I know it might crash but I did a thing that prevenets the crash, trust me
                // means load data from url into Data
            
            places = try! JSONDecoder().decode([Location].self, from: data)
                // self means array of Location s generally, not particular one
                // we could make thisLocation.theseProperties but since we want ALL locations with their "self"
                // properties
                // we make [Locations] AKA array of them with .self
                // it iterpretes as firslt Location.bla bla and second.bla2 bla2 .. etc
        }
}
