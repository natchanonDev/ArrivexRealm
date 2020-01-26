////
////  WatPhoAnnotation.swift
////  ArrivexRealm
////
////  Created by pi3nat on 10/1/2563 BE.
////  Copyright © 2563 pi3nat. All rights reserved.
////
//
//import Foundation
//import MapKit
//
//
//class WatPhoAnnotation: NSObject, MKAnnotation {
//    let title: String?
//    let subtitle: String?
//    let coordinate: CLLocationCoordinate2D
//
//
//    init(title: String?,
//         subtitle: String?,
//         coordinate: CLLocationCoordinate2D) {
//
//        self.title = title
//        self.subtitle = subtitle
//        self.coordinate = coordinate
//
//
//    }
//
//    static func requestMockData()-> [WatPhoAnnotation]{
//
//
//        return [
//
//            WatPhoAnnotation(title: "Reclining Buddha",
//                               subtitle:"พระนอนน้อยแต่นอนนะ",
//                               coordinate: .init(latitude: 13.746476, longitude: 100.491605)),
//            WatPhoAnnotation(title: "Phra Maha Chedi Si Rajakarn",
//                               subtitle:"The symbolic monuments of the first four kings of the current dynasty",
//                               coordinate: .init(latitude: 13.746134, longitude: 100.492207)),
//            WatPhoAnnotation(title: "Phra Palilai Chapel",
//                             subtitle:"The north chapel Phra Palilai",
//                             coordinate: .init(latitude: 13.746971, longitude: 100.493135)),
//            WatPhoAnnotation(title: "Measue Pavilion",
//                             subtitle:"ศาลาแม่ซื้อ",
//                             coordinate: .init(latitude: 13.746124, longitude: 100.492603)),
//            WatPhoAnnotation(title: "Nuad Pavilion",
//                             subtitle:"ศาลานวด",
//                             coordinate: .init(latitude: 13.746478, longitude: 100.492468)),
//            WatPhoAnnotation(title: "The Main Chapel",
//                            subtitle:"พระประธาน",
//                            coordinate: .init(latitude: 13.746511, longitude: 100.493204)),
//            WatPhoAnnotation(title: "Misakawan park",
//                            subtitle:"เก๋งจีน",
//                            coordinate: .init(latitude: 13.746314, longitude: 100.491955))
//
//            ]
//
//    }
//
//
//}
//
//
////annotaion image แบบเหมือนกันหมด
////class MapViewCoordinator: NSObject, MKMapViewDelegate {
////      var mapViewController: MapView
////
////      init(_ control: MapView) {
////          self.mapViewController = control
////      }
////
////      func mapView(_ mapView: MKMapView, viewFor
////           annotation: MKAnnotation) -> MKAnnotationView?{
////
////          //Custom View for Annotation
////          let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "customView")
////          annotationView.canShowCallout = true
////
////          //Your custom image icon
////          annotationView.image = UIImage(named: "map")
////
////          return annotationView
////       }
////}
