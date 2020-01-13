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
    
    let scenes = List<Scenes>()
    
//    @objc dynamic
  
}

class Scenes: Object {
    
     @objc dynamic var isDoneScene : Bool = false
    
}

