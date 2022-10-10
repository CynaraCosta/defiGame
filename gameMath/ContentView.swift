//
//  ContentView.swift
//  gameMath
//
//  Created by Cynara Costa on 06/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
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
                    Text("Solo")
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 240, height: 40)
                        .background(Rectangle().fill(Color.white).shadow(radius: 3))

                    Text("Disputa")
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 240, height: 40)
                        .background(Rectangle().fill(Color.white).shadow(radius: 3))


                }


            }

        }

        
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
            ContentView()
        }
    }
}
