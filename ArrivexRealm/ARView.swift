//
//  ARView.swift
//  ArrivexRealm
//
//  Created by pi3nat on 16/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//

import SwiftUI

struct ARView: View {
    @State var showmenu = true
    var body: some View {
       
        ZStack{
         VStack{
    
            
            Button(action : { withAnimation{ self.showmenu.toggle() }}) {
                Image(systemName: "text.justify")
                    .font(.title).foregroundColor(.white).padding(25)
                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            Button(action : { withAnimation{ self.showmenu.toggle() }}) {
               ARViewMenu()
            }.offset(x : showmenu ? 0: UIScreen.main.bounds.height)
            //ฟังชั่น เปิดปิดก้ลอง
          
         }
        }.background(Color(.black)).edgesIgnoringSafeArea(.bottom)
    }
}

struct ARView_Previews: PreviewProvider {
    
    static var previews: some View {
        ARView()
    }
}
