//
//  StampObject.swift
//  ArrivexRealm
//
//  Created by pi3nat on 10/1/2563 BE.
//Copyright © 2563 pi3nat. All rights reserved.
//

import Foundation
import RealmSwift

class StampObject: Object {
    
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
    
    @objc dynamic var name : String = ""
    @objc dynamic var isDone : Bool = false
    @objc dynamic var isChoosed : Bool = false
    @objc dynamic var Scene : String = ""
    @objc dynamic let Scenes = List<ListScene>()
    
    
    
}
