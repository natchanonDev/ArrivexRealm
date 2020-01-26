//
//  DiscoveryPlaces.swift
//  ArrivexRealm
//
//  Created by pi3nat on 25/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//

import SwiftUI

struct DiscoveryPlaces: View {
    @EnvironmentObject var data : Datamodel
    @State private var isActiveARView = false
    
    var body: some View {
        
        ZStack{
            Color(.cream).edgesIgnoringSafeArea(.all)
         ZStack {
          if isActiveARView == false{
           
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
                }.background(Color(.cream))
            }//Vstack
            }
            
            
            if isActiveARView == true {
                ZStack {
                    if data.enableAR {ARDisplayView()}
                    
                    else {
                        Color(.cream).edgesIgnoringSafeArea(.all)
                    }
                    
                    
                    ARViewMenu()
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            

            
        
    }
}

struct DiscoveryPlaces_Previews: PreviewProvider {
    static var previews: some View {
        DiscoveryPlaces()
    }
}
