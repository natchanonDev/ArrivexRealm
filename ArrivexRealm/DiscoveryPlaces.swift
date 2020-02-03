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
                VStack(alignment: .leading){
                    
                
                    Text("Mae Sue Pavilion").bold().font(.largeTitle).padding(.top,20)  // name of place
                    
                    HStack(alignment: .top){
                        Image("light").resizable().frame(width: 50, height: 60)
                        VStack(alignment: .leading){
                            Text("LIGHT ELEMENT").font(.body).bold()
                            Text("To discovery spirit gradient of the people").font(.footnote).fontWeight(.ultraLight)
                            
                         }
                    }
                    HStack(alignment: .top){
                        Image("sound").resizable().frame(width: 50, height: 60)
                        VStack(alignment: .leading){
                                Text("SOUND ELEMENT").font(.body).bold()
                                Text("Thai traditional outdoor games in Sala Mae Sue").font(.footnote).fontWeight(.ultraLight)
                                           
                            }
                    }
                                   
                    Spacer()
                    
                   
                }.background(Color(.cream)) // v
                Button(action:{
                               
                                              self.isActiveARView = true
                                             print("dis_dispage")
                                          }) {
                                       HStack {
                                               Image(systemName: "magnifyingglass")
                                              Text("Discovery").fontWeight(.semibold)
                                              }.padding(10).foregroundColor(.white)
                                       }.background(Color(.black)).cornerRadius(30).padding(.bottom,10) // button
             }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }//if false
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
