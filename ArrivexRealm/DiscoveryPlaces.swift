//
//  DiscoveryPlaces.swift
//  ArrivexRealm
//
//  Created by pi3nat on 25/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//

import SwiftUI

struct DiscoveryPlaces: View {
    
    @State private var isActiveARView = false
    
    var body: some View {
        ZStack{
            
        VStack{
            Text("DiscoveryPlaces")
            
                     
                       Button(action:{
                           self.isActiveARView = true
                          print("dis_dispage")
                       }) {
                           HStack {
                               Image(systemName: "magnifyingglass")
                               Text("Discovery").fontWeight(.semibold)
                           }.padding(10).foregroundColor(.white)
                       }.background(Color(.black)).cornerRadius(30)
            }//Vstack
            
            if isActiveARView == true {
                ARViewMenu()
            }
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color(.cream))
            

            
        
    }
}

struct DiscoveryPlaces_Previews: PreviewProvider {
    static var previews: some View {
        DiscoveryPlaces()
    }
}
