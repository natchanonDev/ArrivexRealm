//
//  Stamps.swift
//  ArrivexRealm
//
//  Created by pi3nat on 25/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//

import SwiftUI

struct Stamps: View {
    @State private var isBack = false
    
    var body: some View {
       
        ZStack{
        NavigationView {
            Text("").navigationBarTitle(Text("Stamps Collection")).navigationBarItems(trailing:
                Button("Back") {
                    self.isBack = true
                }
            )

            ZStack {
            Text("Stamps pad")
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color(.cream)).edgesIgnoringSafeArea(.all)
        }
            if isBack == true{
                SelectLocation()
            }
        }
    }
}

struct Stamps_Previews: PreviewProvider {
    static var previews: some View {
        Stamps()
    }
}
