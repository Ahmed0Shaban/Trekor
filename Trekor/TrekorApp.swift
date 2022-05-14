//
//  TrekorApp.swift
//  Trekor
//
//  Created by Ahmed Shaban on 12/05/2022.
//

import SwiftUI

@main
struct TrekorApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                NavigationView {
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }

            }
            .environmentObject(locations)
            // to load the class once then use it whereever you want without loading again
         
            
        }
    }
}
