//
//  ARDisplayView.swift
//  ArrivexRealm
//
//  Created by pi3nat on 26/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//


import SwiftUI
import RealityKit
import Combine
import ARKit
import SpriteKit

struct ARDisplayView: View {
    var body: some View {
        return ARViewContainer()
                .edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    
    func makeUIView(context: Context) -> ARView {
        
        
        return Datamodel.shared.arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
}

struct ARDisplayView_Previews: PreviewProvider {
    static var previews: some View {
        ARDisplayView()
    }
}
