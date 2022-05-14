//
//  Location.swift
//  Trekor
//
//  Created by Ahmed Shaban on 13/05/2022.
//
import Foundation

struct Location: Decodable, Identifiable {
        // Decodable from JSON
        // This new datastructure has the same names stored in our
        // JSON file that contains our data of interest
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
}
