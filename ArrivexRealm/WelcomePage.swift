//
//  WelcomePage.swift
//  ArrivexRealm
//
//  Created by pi3nat on 26/1/2563 BE.
//  Copyright © 2563 pi3nat. All rights reserved.
//

import SwiftUI

struct WelcomePage: View {
    @State private var  isContinue = false
    var body: some View {
     
        ZStack{

          Color(.black).edgesIgnoringSafeArea(.all)

          ZStack{
            VStack{
                Text("WELCOME TO").foregroundColor(Color(.white)).font(.system(size: 36)).padding(.top,60)
                Text("ARRIVE").bold().foregroundColor(Color(.red)).font(.system(size: 36))
                    Spacer()

//              ScrollView(.horizontal) {
//                HStack{
                VStack(alignment: .leading){
                  HStack{
                    Image(systemName: "faceid").font(.largeTitle).padding(10)
                    VStack(alignment: .leading){
                        Text("ACHIEVE").font(.body).bold()
                        Text("The revealed of the achieved hidden story ").font(.footnote).fontWeight(.ultraLight)
                        Text("element").font(.footnote).fontWeight(.ultraLight)
                     }
                    }.padding(10)
                  HStack{
                    Image(systemName: "map").font(.largeTitle).padding(10)
                    VStack(alignment: .leading){
                        Text("MAP").font(.body).bold()
                        Text("To choose the stamp accroding to the location").font(.footnote).fontWeight(.ultraLight)
                     }
                    }.padding(10)
                  HStack{
                    Image(systemName: "camera.viewfinder").font(.largeTitle).padding(10)
                    VStack(alignment: .leading){
                        Text("SCREENSHOT").font(.body).bold()
                        Text("To take a screenshot").font(.footnote).fontWeight(.ultraLight)
                     }

                    }.padding(10)
                  HStack{
                    Image(systemName: "book").font(.largeTitle).padding(10)
                    VStack(alignment: .leading){
                        Text("STAMPS COLLECTION").font(.body).bold()
                        Text("The stamps collection which collected the ").font(.footnote).fontWeight(.ultraLight)
                        Text("achieved stamps").font(.footnote).fontWeight(.ultraLight)
                     }

                    }.padding(10)
                  HStack{
                    Image(systemName: "ellipses.bubble").font(.largeTitle).padding(10)
                    VStack(alignment: .leading){
                        Text("TUTORIAL").font(.body).bold()
                        Text("User Guide for more information").font(.footnote).fontWeight(.ultraLight)
                    }
                   }.padding(10)
                 }.foregroundColor(Color(.white)) //Vstack menubar


//                } //h
//               } //Scoll
                Spacer()
                Button(action:{
                    self.isContinue = true
                                print("Continue")
                                      }) {
                                  HStack {

                                      Text("CONTINUE").fontWeight(.semibold).padding(.horizontal,50)
                                  }.padding(10).foregroundColor(.white)
                                  }.background(Color(.red)).cornerRadius(5).padding(.bottom,40)

            }.padding(.horizontal,10)//v
            ZStack{
            if isContinue == true {
                SelectLocation()
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)//z
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)//z
    }
}

struct WelcomePage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePage()
    }
}
