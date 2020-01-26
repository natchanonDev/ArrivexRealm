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
    
    var body: some View {
        
        ZStack {
            
            ZStack{
                Color(.cream).edgesIgnoringSafeArea(.all)
              
             
              NavigationView {

                VStack{

                ZStack{
                     MapView().padding(10).navigationBarTitle(Text("Discovery")).navigationBarItems(trailing:
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
                            Image("Stamp").resizable().frame(width: 110,height: 160)
                                                       .overlay(
                                                          Rectangle()
                                                       .fill(LinearGradient(gradient: Gradient(colors: [.clear]),
                                                             startPoint: .center, endPoint: .bottom)))
                                                       .cornerRadius(12.0).shadow(radius: 1.5,x: 2, y: 2)
                                Text("Mea Sue Pavilion").font(.footnote).fontWeight(.regular).padding(3).background(Color(.white)).cornerRadius(12.0)
                            }


                        }.foregroundColor(Color(.black)) //H



                        }.padding(.horizontal,20).padding(.bottom,8) //scrollview

                    }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading).padding(.bottom,10)

//                    ZStack{
//                        HStack{
//                        Text("menu")
//                        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
//                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
//                     .offset(x: showmenubar ? 0: 70)


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
                }.offset(x: showmenubar ? 0: -70)  //V



                }//navi
                
                if showmenubar == false{
                        Color(.white).edgesIgnoringSafeArea(.all).opacity(0.7).padding(.trailing,70)
                         ZStack{
                             VStack{
                                 Text("nae").padding(10).padding(.bottom,10)
                                Text("nae2").padding(10).padding(.bottom,10)
                             }.padding(.top,50)
                         
                             
                            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment:.topTrailing).padding(10)
                             
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
                         
        } //z
     
    }
    
}


struct SelectLocation_Previews: PreviewProvider {
    static var previews: some View {
        SelectLocation()
    }
}

