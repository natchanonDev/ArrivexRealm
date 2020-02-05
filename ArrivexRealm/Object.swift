//
//  Object.swift
//  ArrivexRealm
//
//  Created by pi3nat on 13/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//
import Foundation
import RealmSwift

class StampObject: Object {
    
    @objc dynamic var name : String = ""
    @objc dynamic var isDoneStamp : Bool = false
    @objc dynamic var isChoosed : Bool = false
    @objc dynamic var info : String = ""
    
    let scenes = List<Scene>()
    
    convenience init(name:String, isDoneStamp:Bool, isChoosed:Bool,info: String ){
        
        self.init()
        self.name = name
        self.isDoneStamp = isDoneStamp
        self.isChoosed = isChoosed
        self.info = info
    }
    
  
}

class Scene: Object {
    
     @objc dynamic var SceneName : String = ""
     @objc dynamic var isDoneScene : Bool = false
    
}

let Maesue = StampObject()
    Maesue.name = "Measue"
//    Maesue.isDoneStamp = false
//    Maesue.info = ""
