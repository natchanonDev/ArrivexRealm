
//  ARView.swift
//  ArrivexRealm
//
//  Created by pi3nat on 13/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//

import SwiftUI

struct ARViewMenu: View {
   
    @State var showmenu : Bool = true
    @State private var isActive : Bool = false
    
    
    var body:  some View {
    
     NavigationView {
            ZStack{
            
             VStack{
                HStack{
    //            Toggle() {
    ////                      toggle AR
    //                   }.padding()
                 Text("nat")
                    Button(action : { withAnimation{ self.showmenu.toggle()  }
        
                    } ) {
                        Image(systemName: "text.justify")
                            .font(.title).foregroundColor(.blue).padding(.trailing,25)
                 }
                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing).padding(.top,45)
            
           
                
              ZStack() { //set frame of menus bar
                ZStack() {
                    
                RoundedRectangle(cornerRadius: 25).foregroundColor(Color.white).opacity(0.3)

                VStack{
                 
                    NavigationLink( destination: SelectLocation(), isActive: self.$isActive){
                        Text("")
                    }
                         
                    
                Button(action:{
                    self.isActive = true
                }) {
                    VStack{
                        Image(systemName: "faceid").font(.largeTitle).shadow(radius: 1.0,x: 2, y: 2)
                        Text("ACHIEVE").font(.footnote).fontWeight(.ultraLight)
                    }.padding(.all,8.0)
                }.padding(.top,8.0)

                
                Button(action:{
    //                SelectLocation()
                    print("map")
                    
                          
                     
                }) {
                    VStack{
                    Image(systemName: "map").font(.largeTitle).shadow(radius: 1.0,x: 2, y: 2)
                        Text("MAP").font(.footnote).fontWeight(.ultraLight)
                    }
                }.padding(.all,8.0)
                
                Button(action:{
                    print("screen")
                }) {
                    VStack{
                    Image(systemName: "camera.viewfinder").font(.largeTitle).shadow(radius: 1.0,x: 2, y: 2)

                        Text("SCREEN").font(.footnote).fontWeight(.ultraLight)
                        Text("SHOT").font(.footnote).fontWeight(.ultraLight)
                    }
                }.padding(.all,8.0)
                    
                Button(action:{
                    print("stamp")
                }) {
                    VStack{
                        Image(systemName: "book").font(.largeTitle).shadow(radius: 1.0,x: 2, y: 2)
                        Text("STAMPS").font(.footnote).fontWeight(.ultraLight)
                    }.padding(.all,8.0)
                }.padding(.bottom,8.0)
                
                }.foregroundColor(Color(.blue))
            
                }.frame(maxWidth: 73, maxHeight: 360).offset(x : showmenu ? 0: UIScreen.main.bounds.height)
                }.frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .bottomTrailing).padding(15).padding(.bottom,50)
            
            } //Vstack

                
            }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color(.cream)).edgesIgnoringSafeArea(.all)
        } // navigation

        

      
        
    }
        
}



struct ARViewMenu_Previews: PreviewProvider {
    static var previews: some View {
        ARViewMenu()
    }
}
