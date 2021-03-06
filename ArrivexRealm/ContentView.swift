//
//  ContentView.swift
//  ArrivexRealm
//
//  Created by pi3nat on 9/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//

import SwiftUI
import RealityKit
import RealmSwift

struct ContentView : View {
    @EnvironmentObject var data : Datamodel
   
    var body: some View {
        
        ZStack {
            
            if data.enableAR {ARDisplayView()}
            
            else {
                Color(.cream).edgesIgnoringSafeArea(.all)
            }
            
            WelcomePage()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
       
    }

    
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
