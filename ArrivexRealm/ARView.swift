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
            //กล้อง + ปุ่มenable กล้อง
        
        VStack{
            
            Button(action:{

            }) {
                VStack{
//                Image(systemName: "doc.text.viewfinder").font(.largeTitle).padding(2)
                    Image(systemName: "signature").padding().font(.largeTitle)
                    Text("ACHIEVE").font(.footnote)
                }
            }.padding(2)
     
            
            Button(action:{
            }) {
                VStack{
                Image(systemName: "map").padding().font(.largeTitle)
                    Text("MAP").font(.footnote)
                }
            }.padding(2)
            
            Button(action:{
            }) {
                VStack{
                Image(systemName: "camera.viewfinder").padding().font(.largeTitle)
//                    Image(systemName: "faceid").font(.largeTitle).padding(2)
                    Text("SCREEN").font(.footnote)
                    Text("SHOT").font(.footnote)
                }
            }.padding(2)
            
            Button(action:{
            }) {
                VStack{
                    Image(systemName: "book").padding().font(.largeTitle)
                    Text("STAMPS").font(.footnote)
                    
                }
            }.padding(2)
            
        }.foregroundColor(.black).frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .bottomTrailing).padding(.vertical,20)
        
    }
        
    }
}


struct ARView_Previews: PreviewProvider {
    static var previews: some View {
        ARView()
    }
}
