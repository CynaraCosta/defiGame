//
//  ContentView.swift
//  gameMath
//
//  Created by Cynara Costa on 06/10/22.
//

import SwiftUI

struct ContentView: View {
    
    init(){
            let nav = UINavigationBar.appearance()
            nav.titleTextAttributes = [.foregroundColor: UIColor.white]
        }
        //
    var body: some View {
        
        NavigationView {
            ZStack {
                BackgroundView()

                VStack(spacing: 111) {
                    Text("Logo Défi")
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 240, height: 107)
                        .background(Rectangle().fill(Color.white).shadow(radius: 3))

                    VStack (spacing: 24) {
                        NavigationLink(destination: SelectGameView()){
                            Text("Solo")
                                .foregroundColor(Color.black)
                                .fixedSize(horizontal: false, vertical: true)
                                .multilineTextAlignment(.center)
                                .padding()
                                .frame(width: 240, height: 40)
                                .background(Rectangle().fill(Color.white).shadow(radius: 3))
                        }

                        NavigationLink(destination: SelectGameView()){
                            Text("Disputa")
                                .fixedSize(horizontal: false, vertical: true)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                                .padding()
                                .frame(width: 240, height: 40)
                                .background(Rectangle().fill(Color.white).shadow(radius: 3))
                        }.navigationBarTitle("")
                            .navigationBarHidden(true)
                        
                        
                    }
                }
            }
        }.accentColor(Color.white)
        
        
        

        
    }
}

struct BackgroundView: View {
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("Ocean"), Color("Aqua")]),
                       startPoint: .bottomTrailing,
                       endPoint: .topLeading)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
