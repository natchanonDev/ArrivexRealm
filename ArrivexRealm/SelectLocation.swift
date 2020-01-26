//
//  SelectLocation.swift
//  ArrivexRealm
//
//  Created by pi3nat on 10/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//


import SwiftUI
import MapKit

struct SelectLocation: View {
    
    @State private var isDiscovery = false
    @State private var isActiveARView = false
    @EnvironmentObject var data: Datamodel
    
    var body: some View {
        
        ZStack {
            ZStack{
                Color(.cream).edgesIgnoringSafeArea(.all)
                
             
//            VStack{
//                Text("DISCOVER").padding(.top,10)
//
//                 Text("ดึงName place").font(.title).fontWeight(.bold).padding(.top,5) //ดึงชื่อตามlacation annotaion
//                           Image("stamp").resizable().frame(width: 140,height: 200)
//                               .overlay(
//                                   Rectangle()
//                                       .fill(LinearGradient(gradient: Gradient(colors: [.clear]),
//                                                            startPoint: .center, endPoint: .bottom)))
//                                       .cornerRadius(12.0).shadow(radius: 1.0,x: 2, y: 2)
              NavigationView {
                VStack{
                   
                ZStack{
                    
                    MapView().padding(10).navigationBarTitle(Text("Discovery")).navigationBarItems(leading:
                         HStack {
                               Button("Back") {
                                 self.isActiveARView = true
                               }
                             
                           }
//                      help button ทำ tutarial
//                      ,
//                    trailing:
//                        HStack {
//
//                               Button("Help") {
//                                   print("Help tapped!")
//                               }
//                           }
                        
                    )
              
                    ZStack{
//                        ZStack{
                        ScrollView(.horizontal) {
                        HStack{
                            VStack{
                            Image("Stamp").resizable().frame(width: 110,height: 160)
                                                       .overlay(
                                                          Rectangle()
                                                       .fill(LinearGradient(gradient: Gradient(colors: [.clear]),
                                                             startPoint: .center, endPoint: .bottom)))
                                                       .cornerRadius(12.0).shadow(radius: 1.5,x: 2, y: 2)
                                Text("Mea Sue Pavilion").font(.footnote).fontWeight(.regular).padding(3).background(Color(.white)).cornerRadius(12.0)
                            }
                                
                            VStack{
                            Image("Stamp1").resizable().frame(width: 110,height: 160)
                                .overlay(
                                   Rectangle()
                                .fill(LinearGradient(gradient: Gradient(colors: [.clear]),
                                      startPoint: .center, endPoint: .bottom)))
                                .cornerRadius(12.0).shadow(radius: 1.5,x: 2, y: 2)
                                Text("Nuad Pavilion").font(.footnote).fontWeight(.regular).padding(3).background(Color(.white)).cornerRadius(12.0)
                            }
                            
                            
                            VStack{
                            Image("Stamp2").resizable().frame(width: 110,height: 160)
                                                       .overlay(
                                                          Rectangle()
                                                       .fill(LinearGradient(gradient: Gradient(colors: [.clear]),
                                                             startPoint: .center, endPoint: .bottom)))
                                                       .cornerRadius(12.0).shadow(radius: 1.5,x: 2, y: 2)
                                Text("Reclining Buddha").font(.footnote).fontWeight(.regular).padding(3).background(Color(.white)).cornerRadius(12.0)
                            }
                            
                            VStack{
                            Image("Stamp3").resizable().frame(width: 110,height: 160)
                                .overlay(
                                   Rectangle()
                                .fill(LinearGradient(gradient: Gradient(colors: [.clear]),
                                      startPoint: .center, endPoint: .bottom)))
                                .cornerRadius(12.0).shadow(radius: 1.5,x: 2, y: 2)
                                Text("Misakawan Park").font(.footnote).fontWeight(.regular).padding(3).background(Color(.white)).cornerRadius(12.0)
                            }
                                
                        }.foregroundColor(Color(.black))

                         
                            
                        }.padding(.horizontal,20).padding(.bottom,8)
                    
                    }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading).padding(.bottom,10)
    
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment:.center) //Z
                    
                    Button(action:{
                                      self.isDiscovery = true
                                          print("Dicovery")
                                          }) {
                                      HStack {
                                          Image(systemName: "magnifyingglass")
                                          Text("Discovery").fontWeight(.semibold)
                                          }.padding(10).foregroundColor(.white)
                                      }.background(Color(.black)).cornerRadius(30)
                }
              }

                
            }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color(.cream))
            if isDiscovery == true {
                DiscoveryPlaces()
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
                         
        } //z
     
    }
    
}


struct SelectLocation_Previews: PreviewProvider {
    static var previews: some View {
        SelectLocation()
    }
}

