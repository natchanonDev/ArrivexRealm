//
//  DataModel.swift
//  ArrivexRealm
//
//  Created by pi3nat on 26/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//


import Combine
import RealityKit
import SpriteKit
import ARKit

final class Datamodel: ObservableObject {
    static var shared = Datamodel()
    
    @Published var arView: ARView!
    //@Published var skView: SKView!
    @Published var enableAR = false
    @Published var loadScene = 0
    @Published var buttonPressed = 0
    @Published var check = 0
   
    init() {
        
        arView = ARView(frame: .zero)
        //skView = SKView(frame: .zero)
        enum location {
            case maesue
        }
        
        let currentLocation = location.maesue
        
        switch currentLocation {
        case .maesue:
            Experience.loadBaffaloSceneAsync { result in
                switch result {
                case .success(let anchor):
                    self.arView.scene.anchors.append(anchor)
                    self.loadScene += 1
                    print(" loadScene : " + String(self.loadScene))
                    anchor.actions.isBaffaloDone.onAction = { BaffaloModel in
                        self.buttonPressed += 1
                        print(" button : " + String(self.buttonPressed))
                        if self.buttonPressed == self.loadScene {
                            self.check = 1
                            print(" Complete !!!!!")
                        }
                        else { print(" Not Complete Yet ****") }
                    }
                case .failure(let error):
                    print("Baffalo fail load:\(error.localizedDescription)")
                }
            }
            Experience.loadCowSceneAsync { result in
                switch result {
                case .success(let anchor):
                    self.arView.scene.anchors.append(anchor)
                    self.loadScene += 1
                    print(" loadScene : " + String(self.loadScene))
                    anchor.actions.isCowDone.onAction = { CowModel in
                        self.buttonPressed += 1
                        print(" button : " + String(self.buttonPressed))
                        if self.buttonPressed == self.loadScene {
                            self.check = 1
                            print(" Complete !!!!!")
                        }
                        else { print(" Not Complete Yet ****") }
                    }
                case .failure(let error):
                    print(" Cow fail load:\(error.localizedDescription)")
                }
            }
//            Experience.loadElephantSceneAsync { result in
//                switch result {
//                case .success(let anchor):
//                    self.loadScene += 1
//                    self.arView.scene.anchors.append(anchor)
//                case .failure(let error):
//                    print("elephant fail load:\(error.localizedDescription)")
//                }
//            }
        }
    }
    
}
