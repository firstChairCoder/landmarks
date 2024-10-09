//
//  MapView.swift
//  Landmarks
//
//  Created by macbook on 09/10/2024.
//

//import SwiftUI
//import MapKit
//
//struct MapView: View {
//    var body: some View {
//        Map(coordinateRegion: region)
//    }
//
//    private var region: MKCoordinateRegion {
//        MKCoordinateRegion(
//            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
//            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
//        )
//    }
//}
//
//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView()
//    }
//}

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    @State private var region: MKCoordinateRegion
        
        // Custom initializer
        init(coordinate: CLLocationCoordinate2D) {
            self.coordinate = coordinate
            self._region = State(initialValue: MKCoordinateRegion(
                center: coordinate,
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            ))
        }

    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
