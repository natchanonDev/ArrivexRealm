//
//  Stamps.swift
//  ArrivexRealm
//
//  Created by pi3nat on 25/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//

import SwiftUI

struct Stamps: View {
    var body: some View {
        ZStack {
            Text("Stamps pad")
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color(.cream))
    }
}

struct Stamps_Previews: PreviewProvider {
    static var previews: some View {
        Stamps()
    }
}
