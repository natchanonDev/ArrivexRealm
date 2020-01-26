//
//  MapView.swift
//  ArrivexRealm
//
//  Created by pi3nat on 10/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    @State var manager = CLLocationManager()
    @State var alert = false

    let landmarks = WatPhoAnnotation.requestMockData()
     
   
    func makeUIView(context: Context) -> MKMapView{
        
        let mapView = MKMapView(frame: .zero)
        
        return mapView
    }
    func updateUIView(_ view: MKMapView, context: Context){
           
        
            let coordinate = CLLocationCoordinate2D(
                             latitude: 13.745918, longitude: 100.492377)
//                latitude: 13.746529, longitude: 100.493331)

//            let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
            let span = MKCoordinateSpan(latitudeDelta: 0.0022, longitudeDelta: 0.0022) //ไว้test locationtrack
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

class WatPhoAnnotation: NSObject, MKAnnotation {
    let title: String?
    let subtitle: String?
    let coordinate: CLLocationCoordinate2D
    let mapID: String?
    
    
    init(title: String?,
         subtitle: String?,
         coordinate: CLLocationCoordinate2D,
         mapID: String?) {
        
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
        self.mapID = mapID
        

    }
    
    static func requestMockData()-> [WatPhoAnnotation]{


        return [
        
            WatPhoAnnotation(title: "Reclining Buddha",
                               subtitle:"พระนอนน้อยแต่นอนนะ",
                               coordinate: .init(latitude: 13.746476, longitude: 100.491605),
                               mapID : "1"),
            WatPhoAnnotation(title: "Phra Maha Chedi Si Rajakarn",
                               subtitle:"The symbolic monuments of the first four kings of the current dynasty",
                               coordinate: .init(latitude: 13.746134, longitude: 100.492207),
                               mapID : "2"),
            WatPhoAnnotation(title: "Phra Palilai Chapel",
                             subtitle:"The north chapel Phra Palilai",
                             coordinate: .init(latitude: 13.746971, longitude: 100.493135),
                             mapID : "3"),
            WatPhoAnnotation(title: "Measue Pavilion",
                             subtitle:"ศาลาแม่ซื้อ",
                             coordinate: .init(latitude: 13.746124, longitude: 100.492603),
                             mapID : "4"),
            WatPhoAnnotation(title: "Nuad Pavilion",
                             subtitle:"ศาลานวด",
                             coordinate: .init(latitude: 13.746478, longitude: 100.492468),
                             mapID : "5"),
            WatPhoAnnotation(title: "The Main Chapel",
                            subtitle:"พระประธาน",
                            coordinate: .init(latitude: 13.746511, longitude: 100.493204),
                            mapID : "6"),
            WatPhoAnnotation(title: "Misakawan park",
                            subtitle:"เก๋งจีน",
                            coordinate: .init(latitude: 13.746314, longitude: 100.491955),
                            mapID : "7")

            ]

    }

}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}




















