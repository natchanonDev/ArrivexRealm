//
//  ARView.swift
//  ArrivexRealm
//
//  Created by pi3nat on 13/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//

import SwiftUI

struct ARView: View {
    
    var body: some View {
        
            
        
        ZStack{
            Text("F")
       //ใส่กล้อง +ตัวเปิดปิดกล้อง
            
        ZStack{
            
         ZStack{
                
                RoundedRectangle(cornerRadius: 25).foregroundColor(Color.black).opacity(0.05)

            VStack{
                
            Button(action:{
            }) {
                VStack{
                    Image(systemName: "qrcode.viewfinder").font(.largeTitle)
                    Text("ACHIEVE").font(.footnote)
                }
            }.padding(.all,8.0)
     
            
            Button(action:{
                print("map")
            }) {
                VStack{
                Image(systemName: "map").font(.largeTitle)
                    Text("MAP").font(.footnote)
                }
            }.padding(.all,8.0)
            
            Button(action:{
            
            }) {
                VStack{
                Image(systemName: "camera.viewfinder").font(.largeTitle)

                    Text("SCREEN").font(.footnote)
                    Text("SHOT").font(.footnote)
                }
            }.padding(.all,8.0)
                
            Button(action:{
            }) {
                VStack{
                    Image(systemName: "book").font(.largeTitle)
                    Text("STAMPS").font(.footnote)
                    
                }
            }.padding(.all,8.0)
            
            }.foregroundColor(.black)
                
         }.frame(maxWidth: 80, maxHeight: 350)

            
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing).padding(.all,15)

        }
        
      
        
    }
        
}



struct ARView_Previews: PreviewProvider {
    static var previews: some View {
        ARView()
    }
}
