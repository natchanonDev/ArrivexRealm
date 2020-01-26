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
    
    var body: some View {
        
        
            
        ZStack{
            Color(.white).opacity(0.5).edgesIgnoringSafeArea(.all)
            ZStack{
                ZStack{
//                    Image(systemName: "clear.fill").foregroundColor(.white).padding(.top,20)
                    
                    Button(action:{
                        self.closed = true
                        
                    }) {
                           Image(systemName: "clear.fill").font(.largeTitle).foregroundColor(.white).padding(.top,20)
                    }
                    
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .topTrailing).padding(.horizontal,20)
            }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color(.darkred)).cornerRadius(30.0).padding(.all,20).opacity(0.95)
            
             
            Text("help").foregroundColor(.white)
            
            if closed == true {
                SelectLocation()
            }
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            
        
    
    }
}

struct HelpDiscovery_Previews: PreviewProvider {
    static var previews: some View {
        HelpDiscovery()
    }
}
