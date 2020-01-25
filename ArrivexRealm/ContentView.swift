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
    var body: some View {

//        Text("NAT")
//        SelectLocation()
        
        ZStack {
            Color(.cream).edgesIgnoringSafeArea(.all)
            ARViewMenu()
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color(.cream))
       
    }

    
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
