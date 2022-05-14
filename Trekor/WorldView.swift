//
//  WorldView.swift
//  Trekor
//
//  Created by Ahmed Shaban on 13/05/2022.
//

import MapKit
import SwiftUI

struct WorldView: View {
    
    @EnvironmentObject var locations: Locations
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    // SwiftUI uses the @State property wrapper to allow us to modify values inside a struct
    // $region means read-and-write Binding is allowed (two way binding )
    
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations.places) {
            location in MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                NavigationLink(destination: ContentView(location: location)) {
                    Image(location.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 80, height: 40)
                        .shadow(radius: 3)
                }
            }
        }
            .navigationTitle("Locations")
    
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
