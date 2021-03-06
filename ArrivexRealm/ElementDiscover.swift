//
//  ElementDiscover.swift
//  ArrivexRealm
//
//  Created by pi3nat on 31/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//

import SwiftUI

struct ElementDiscover: View {
    @State private var isBack = false
    @EnvironmentObject var data : Datamodel
    
    var body: some View {
         ZStack{
                   
            if isBack == false{
                Color(.cream).edgesIgnoringSafeArea(.all)
                
                NavigationView {
                              
                 ZStack {
                    
                 
                       Text("SwiftUI")
                           .navigationBarTitle("ACHIEVED ELEMENT")
                           .navigationBarItems(trailing:
                               Button("back") {
                                self.isBack = true
                               }
                           )
                   }//z
               
                
                }//na
            }
            
            if isBack == true{
                ZStack {
                    
                    if data.enableAR {ARDisplayView()}
                                   
                    else {
                        Color(.cream).edgesIgnoringSafeArea(.all)
                        }
                                   
                                   
                        ARViewMenu()
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                
            }//if
                   
                   
                   
                   
        }.frame(maxWidth: .infinity, maxHeight: .infinity) //z
                   

    }
}

struct ElementDiscover_Previews: PreviewProvider {
    static var previews: some View {
        ElementDiscover()
    }
}
