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
    
    var body: some View {
    
        ZStack{
            
            ZStack{
                
            NavigationView {
                ZStack{
                    
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
                    
                    Text("STEP1").bold().foregroundColor(Color(.white)).padding(.horizontal,10).background(Color(.black)).cornerRadius(30)
                    Text("Choose the stamp according to the location you want to discover")
                    
                    Text("STEP2").bold().foregroundColor(Color(.white)).padding(.horizontal,10).background(Color(.black)).cornerRadius(30)
                    Text("See the hidden element in that place")
                    
                    Text("STEP3").bold().foregroundColor(Color(.white)).padding(.horizontal,10).background(Color(.black)).cornerRadius(30)
                    Text("Start playing and discover the specified symbol by panning tha camera")
                    Text("By interacting with the symbol the hidden story can be revealed")
                    
                    Text("STEP4").bold().foregroundColor(Color(.white)).padding(.horizontal,10).background(Color(.black)).cornerRadius(30)
                    Text("The revealed will be remembered and accumulated. When finding all the symbols, you will recieve a reward by the stamp you have chosen, which is an achievement found in the location")
                }.padding(20)
                }//scoll
                    
              }//z
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)//Z
        
                }//navi
                 
                
                
            

            
        } //z
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
