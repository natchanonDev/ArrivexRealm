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
    
    @State var showmenubar = true
    @State private var isDiscovery = false
    @State private var isActiveARView = false
    @State private var isHelp = false
    
    @EnvironmentObject var data: Datamodel
    
    @State private var isAchieve = false
    @State private var isMap = false
    @State private var isStamps = false
    @State public var isStampFromSelect = false
    
    var body: some View {
        
        ZStack {
            
            ZStack{
                Color(.cream).edgesIgnoringSafeArea(.all)
              
             
              NavigationView {

                VStack{

                ZStack{
                     MapView().padding(10).navigationBarTitle(Text("Discovery Map")).navigationBarItems(trailing:
                         HStack {
                              Button(action : { withAnimation{ self.showmenubar.toggle()  }
                                
                                                  } )
                              {
                              Image(systemName: "text.justify")
                                                        .font(.title).foregroundColor(.blue)
                                        }

                         }.padding(.horizontal,10)
                    )

                    ZStack{

                        ScrollView(.horizontal) {
                        

                        HStack{
                            VStack{
                                Image("m1").resizable().frame(width: 110,height: 160)
                                                       .overlay(
                                                          Rectangle()
                                                       .fill(LinearGradient(gradient: Gradient(colors: [.clear]),
                                                             startPoint: .center, endPoint: .bottom)))
                               .shadow(radius: 0.5,x: 2, y: 2)
                                Text("Mae Sue Pavilion").font(.footnote).fontWeight(.regular).padding(3).background(Color(.darkred)).cornerRadius(10.0)
                            }
                            
                            VStack{
                            Image("m1").resizable().frame(width: 110,height: 160)
                                                       .overlay(
                                                          Rectangle()
                                                       .fill(LinearGradient(gradient: Gradient(colors: [.clear]),
                                                             startPoint: .center, endPoint: .bottom)))
                                                       .shadow(radius: 0.5,x: 2, y: 2)
                                Text("Nuad Pavilion").font(.footnote).fontWeight(.regular).padding(3).background(Color(.darkred)).cornerRadius(10.0)
                            }.opacity(0.5)
                            
//                            VStack{
//                            Image("Stamp2").resizable().frame(width: 110,height: 160)
//                                                       .overlay(
//                                                          Rectangle()
//                                                       .fill(LinearGradient(gradient: Gradient(colors: [.clear]),
//                                                             startPoint: .center, endPoint: .bottom)))
//                                                       .cornerRadius(12.0).shadow(radius: 0.5,x: 2, y: 2)
//                                Text("Misakawan Park").font(.footnote).fontWeight(.regular).padding(3).background(Color(.darkred)).cornerRadius(10.0)
//                            }.opacity(0.5)
//
//                            VStack{
//                            Image("Stamp3").resizable().frame(width: 110,height: 160)
//                                                       .overlay(
//                                                          Rectangle()
//                                                       .fill(LinearGradient(gradient: Gradient(colors: [.clear]),
//                                                             startPoint: .center, endPoint: .bottom)))
//                                                       .cornerRadius(12.0).shadow(radius: 0.5,x: 2, y: 2)
//                                Text("The Main Chapel").font(.footnote).fontWeight(.regular).padding(3).background(Color(.darkred)).cornerRadius(10.0)
//                            }.opacity(0.5)







                        }.foregroundColor(Color(.white)) //H

                            

                        }.padding(.horizontal,18).padding(.bottom,8) //scrollview

                    }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading).padding(.bottom,10)
                    

                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment:.center)//Z


                    Button(action:{
                                      self.isDiscovery = true
                                          print("Dicovery")
                                          }) {
                                      HStack {
                                          Image(systemName: "magnifyingglass")
                                          Text("Discovery").fontWeight(.semibold)
                                          }.padding(10).foregroundColor(.white)
                                      }.background(Color(.black)).cornerRadius(30)

                    
                    
                }.offset(x: showmenubar ? 0: -72)  //V

                }//navi
                
                if showmenubar == false{
                        Color(.black).edgesIgnoringSafeArea(.all).opacity(0.1).padding(.trailing,82)
                         ZStack{
                             VStack{
                                            
                                Button(action:{
                                                 print("map")
                                             }) {
                                                 VStack{
                                                 Image(systemName: "map").font(.largeTitle)
                                                    Text("MAP").font(.footnote).fontWeight(.ultraLight)
                                                 }.opacity(0.3).padding(.top,3)
                                             }.padding(.all,5.0)
                                
          
                                Button(action:{
                                                 self.isStamps = true
                                                 self.isStampFromSelect = true
                                                 
                                             }) {
                                                 VStack{
                                                     Image(systemName: "book").font(.largeTitle)
                                                     Text("STAMPS").font(.footnote).fontWeight(.ultraLight)
                                                    Text("COLLECTION").font(.system(size: 8
                                                    )).fontWeight(.ultraLight)
                                                 }.padding(.all,5.0)
                                             }.padding(.bottom,8.0)
                                
                                Button(action:{
                                                 self.isHelp = true
                                                 print("help")
                                             }) {
                                                 VStack{
                                                     Image(systemName: "ellipses.bubble").font(.largeTitle)
                                                     Text("TUTORIAL").font(.footnote).fontWeight(.ultraLight)
//                                                     Text("GUIDE").font(.system(size: 10
//                                                     )).fontWeight(.ultraLight)
                                                 }.padding(.all,5.0)
                                             }.padding(.bottom,8.0)
                                
                                             
                             }.padding(.top,50)
                         
                            
                             
                            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment:.topTrailing).padding(5)
                             
                }
                
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color(.cream)) //v
            if isDiscovery == true {
                DiscoveryPlaces()
               }
            
            else if isActiveARView == true {
                ZStack {
                    if data.enableAR {ARDisplayView()}
                    
                    else {
                        Color(.cream).edgesIgnoringSafeArea(.all)
                    }
                    
                    
                    ARViewMenu()
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            
            else if isHelp == true{
                HelpDiscovery()
            }


            
            else if isAchieve == true{
                DiscoveryPlaces()
            }
                
            else if isStamps == true{
                Stamps()
            }
                         
        } //z
     
    }
    
}


struct SelectLocation_Previews: PreviewProvider {
    static var previews: some View {
        SelectLocation()
    }
}

