//
//  SceneObject.swift
//  ArrivexRealm
//
//  Created by pi3nat on 11/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//

import Foundation
import RealmSwift

class SceneObject: Object {
    
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
    
    @objc dynamic var SceneName : String = ""

    
    
    
}
