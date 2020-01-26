//
//  HelpDiscovery.swift
//  ArrivexRealm
//
//  Created by pi3nat on 26/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//

import SwiftUI

struct HelpDiscovery: View {
    @State private var closed = false
    @State private var isBack = false
//    @State private var width: CGFloat?
    
    var body: some View {
        
        ZStack{
        NavigationView {
            VStack{
            ZStack{
                
            Text("").navigationBarTitle(Text("Tutorial")).navigationBarItems(trailing:
                Button("Back") {
                    self.isBack = true
                }
            )
            }//Z
            
            ZStack{
                ScrollView(.vertical) {
                VStack(alignment: .leading){
                    Text("STEP1").bold()
                    Text("Choose the stamp according to the location you want to discover")
                    
                    Text("STEP2").bold()
                    Text("See the hidden element in that place")
                    
                    Text("STEP3").bold()
                    Text("Start playing and discover the specified symbol by panning tha camera")
                    Text("By interacting with the symbol the hidden story can be revealed")
                    
                    Text("STEP4").bold()
                    Text("The revealed will be remembered and accumulated. When finding all the symbols, you will recieve a reward by the stamp you have chosen, which is an achievement found in the location")
                }.padding(.vertical,20)
                }//scoll
                    
              }//z
                 }//v
                
                
            

            
        } //Navi
            if isBack == true{
                SelectLocation()
            }
        }
        
    
    }
}

struct HelpDiscovery_Previews: PreviewProvider {
    static var previews: some View {
        HelpDiscovery()
    }
}
