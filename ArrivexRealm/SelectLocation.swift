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
                    
                    MapView().padding(10).navigationBarTitle(Text("Discovery"))
              
                    ZStack{
//                        ZStack{
                        ScrollView(.horizontal) {
                        HStack{
                            Image("stamp").resizable().frame(width: 100,height: 160)
                                                       .overlay(
                                                          Rectangle()
                                                       .fill(LinearGradient(gradient: Gradient(colors: [.clear]),
                                                             startPoint: .center, endPoint: .bottom)))
                                                       .cornerRadius(12.0).shadow(radius: 1.5,x: 2, y: 2)
                                
                            
                            Image("stamp1").resizable().frame(width: 100,height: 160)
                                .overlay(
                                   Rectangle()
                                .fill(LinearGradient(gradient: Gradient(colors: [.clear]),
                                      startPoint: .center, endPoint: .bottom)))
                                .cornerRadius(12.0).shadow(radius: 1.5,x: 2, y: 2)
                                
                        }
//                        }.padding(.horizontal,20).padding(.bottom,10)
                         
                            
                        }.padding(.horizontal,20).padding(.bottom,10)
                    
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
//                Button(action:{
//                    self.isDiscovery = true
//                        print("Dicovery")
//                        }) {
//                    HStack {
//                        Image(systemName: "magnifyingglass")
//                        Text("Discovery").fontWeight(.semibold)
//                        }.padding(10).foregroundColor(.white)
//                    }.background(Color(.black)).cornerRadius(30)
                
                
//            }.padding(.bottom,10) //V
              
               
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color(.cream))
            if isDiscovery == true {
                DiscoveryPlaces()
               }
                         
        } //z
     
    }
    
}


struct SelectLocation_Previews: PreviewProvider {
    static var previews: some View {
        SelectLocation()
    }
}

