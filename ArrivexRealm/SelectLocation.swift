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
    


    var body: some View {
        ZStack{
            Color(.cream).edgesIgnoringSafeArea(.all)
            
       
        VStack{
            Text("DISCOVER").padding(.top,40)

             Text("ดึงName place").font(.title).fontWeight(.bold).padding(.top,5) //ดึงชื่อตามlacation annotaion
                       Image("stamp").resizable().frame(width: 160,height: 220)
                           .overlay(
                               Rectangle()
                                   .fill(LinearGradient(gradient: Gradient(colors: [.clear]),
                                                        startPoint: .center, endPoint: .bottom)))
                                   .cornerRadius(12.0).shadow(radius: 1.0,x: 2, y: 2)
            ZStack{
                
                MapView().padding(15)
                
    
                Button(action:{
//                    MapView.updateUIView()
                            print("Direc")
                }) {
                    Image("direc24")
//                    .renderingMode(.original)
                    .padding(8)
                    .background(Color(.white))
                    .cornerRadius(10)
                    .padding(25)
                    

                }.frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topTrailing).shadow(radius: 2.0)
            }
          
            Button(action:{
                //
                print("Dicovery")
            }) {
                HStack {
                    Image(systemName: "magnifyingglass")
                    Text("Discovery").fontWeight(.semibold)
                }.padding(10).foregroundColor(.white)
            }.background(Color(.black)).cornerRadius(30)

        }

          
            
    }
    }
    
}


struct SelectLocation_Previews: PreviewProvider {
    static var previews: some View {
        SelectLocation()
    }
}

