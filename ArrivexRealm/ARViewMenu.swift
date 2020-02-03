
//  ARView.swift
//  ArrivexRealm
//
//  Created by pi3nat on 13/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//

import SwiftUI

struct ARViewMenu: View {
   
    @State var showmenu = true
    @State private var isAchieve = false
    @State private var isMap = false
    @State private var isStamps = false
    
    @EnvironmentObject var data: Datamodel
    
    var body:  some View {
     
        ZStack{
                
             VStack{
                HStack{
    
                  Toggle(isOn: $data.enableAR){
                            Text("AR").bold()
                        }.frame(width: CGFloat(80))
                        .padding(.all,6)
                        .cornerRadius(15)

                 
                    Button(action : { withAnimation{ self.showmenu.toggle()  }
        
                    } ) {
                        Image(systemName: "text.justify")
                            .font(.title).foregroundColor(.blue).padding(.trailing,25)
                 }
                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing).padding(.top,50) //H
                
           
                
              ZStack() { //set frame of menus bar
                ZStack() {
                    
                RoundedRectangle(cornerRadius: 20).foregroundColor(Color.white).opacity(0.3)

                VStack{
                 
                    
                Button(action:{
                    self.isAchieve = true
                    print("ac")
                }) {
                    VStack{
                        Image(systemName: "faceid").font(.largeTitle).shadow(radius: 1.0,x: 2, y: 2)
                        Text("ACHIEVE").font(.footnote).fontWeight(.regular)
                    }.padding(.all,8.0)
                }.padding(.top,8.0)
               
                Button(action:{
                    self.isMap = true
                    print("map")
    
                }) {
                    VStack{
                    Image(systemName: "map").font(.largeTitle).shadow(radius: 1.0,x: 2, y: 2)
                        Text("MAP").font(.footnote).fontWeight(.regular)
                    }
                }.padding(.all,8.0)
                
                Button(action:{
                    print("screen")
                }) {
                    VStack{
                    Image(systemName: "camera.viewfinder").font(.largeTitle).shadow(radius: 1.0,x: 2, y: 2)

                        Text("SCREEN").font(.footnote).fontWeight(.regular)
                        Text("SHOT").font(.footnote).fontWeight(.regular)
                    }
                }.padding(.all,8.0)
                    
                Button(action:{
                    self.isStamps = true
                    print("stamp")
                }) {
                    VStack{
                        Image(systemName: "book").font(.largeTitle).shadow(radius: 1.0,x: 2, y: 2)
                        Text("STAMPS").font(.footnote).fontWeight(.regular)
                        Text("COLLECTION").font(.system(size: 8
                        )).fontWeight(.regular)

                    }.padding(.all,8.0)
                }.padding(.bottom,8.0)
                
                }.foregroundColor(Color(.blue)).padding(.vertical, 5)
            
                }.frame(maxWidth: 73, maxHeight: 365).offset(x : showmenu ? 0: UIScreen.main.bounds.height)
                }.frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .bottomTrailing).padding(15).padding(.bottom,50)
            
            }.edgesIgnoringSafeArea(.all) //Vstack
                
                if isMap == true{
                    SelectLocation()
                }
                
                else if isAchieve == true{
                    ElementDiscover()
                }
                    
                else if isStamps == true{
                    Stamps()
                }
    
     
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        
   
    }
        
}



struct ARViewMenu_Previews: PreviewProvider {
    static var previews: some View {
        ARViewMenu()
    }
}
