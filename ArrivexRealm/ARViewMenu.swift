
//  ARView.swift
//  ArrivexRealm
//
//  Created by pi3nat on 13/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//

import SwiftUI

struct ARViewMenu: View {
    @State var showmenu = true
    var body:  some View {
        
    
       
        
         ZStack{ // set frame of menus bar
        
          ZStack{
                
            RoundedRectangle(cornerRadius: 25).foregroundColor(Color.white).opacity(0.3)

            VStack{
                
            Button(action:{
            }) {
                VStack{
                    Image(systemName: "faceid").font(.largeTitle).shadow(radius: 1.0,x: 2, y: 2)
                    Text("ACHIEVE").font(.footnote).fontWeight(.ultraLight)
                }
            }.padding(.all,8.0)
     
            
            Button(action:{
                print("map")
                 
            }) {
                VStack{
                Image(systemName: "map").font(.largeTitle).shadow(radius: 1.0,x: 2, y: 2)
                    Text("MAP").font(.footnote).fontWeight(.ultraLight)
                }
            }.padding(.all,8.0)
            
            Button(action:{
            
            }) {
                VStack{
                Image(systemName: "camera.viewfinder").font(.largeTitle).shadow(radius: 1.0,x: 2, y: 2)

                    Text("SCREEN").font(.footnote).fontWeight(.ultraLight)
                    Text("SHOT").font(.footnote).fontWeight(.ultraLight)
                }
            }.padding(.all,8.0)
                
            Button(action:{
            }) {
                VStack{
                    Image(systemName: "book").font(.largeTitle).shadow(radius: 1.0,x: 2, y: 2)
                    Text("STAMPS").font(.footnote).fontWeight(.ultraLight)
                }
            }.padding(.all,8.0)
            
            }.foregroundColor(Color(.blue))
                
          }.frame(maxWidth: 73, maxHeight: 350)

            
         }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing).padding(.all,12).padding(.bottom, 60)

        

      
        
    }
        
}



struct ARViewMenu_Previews: PreviewProvider {
    static var previews: some View {
        ARViewMenu()
    }
}
