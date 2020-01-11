//
//  MapView.swift
//  ArrivexRealm
//
//  Created by pi3nat on 10/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//

import SwiftUI
import MapKit
import CoreLocation


struct MapView: UIViewRepresentable {
    

    let landmarks = WatPhoAnnotation.requestMockData()
    
   
    func makeUIView(context: Context) -> MKMapView{
        
        let mapView = MKMapView(frame: .zero)
        
        return mapView
    }
    func updateUIView(_ view: MKMapView, context: Context){
            let coordinate = CLLocationCoordinate2D(
                latitude: 13.746529, longitude: 100.493331)

//            let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
            let span = MKCoordinateSpan(latitudeDelta: 0.12, longitudeDelta: 0.12) //ไว้test locationtrack
            let region = MKCoordinateRegion(center: coordinate,span: span)
            
//            view.delegate = context.coordinator //all image annotation
        
            view.addAnnotations(landmarks)
            view.setRegion(region, animated: true)
            view.isZoomEnabled = true
            view.isRotateEnabled = true
      
            

    }
 


//    func makeCoordinator() -> MapViewCoordinator{
//        MapViewCoordinator(self)  //all image annotation
//    }

//    static func addAnnotation(){
//           let RecliningAnno = MKPointAnnotation()
//           RecliningAnno.title = "Reclining Buddha"
//           RecliningAnno.coordinate = CLLocationCoordinate2D(latitude: 13.746476, longitude: 100.491605)
//
//           let ChediAnno = MKPointAnnotation()
//           ChediAnno.title = "Phra Maha Chedi Si Rajakarn"
//           ChediAnno.coordinate = CLLocationCoordinate2D(latitude: 13.746134, longitude: 100.492207)
//
//
//       }
    
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}




















