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
    
    var body: some View {
        
        NavigationView {
            ZStack {
                BackgroundView()
                
                VStack (spacing: 132) {
                    
                    VStack(spacing: 136) {
                        Text("Logo Défi")
                            .fixedSize(horizontal: false, vertical: true)
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: UIScreen.main.bounds.width * 0.7375, height: 107)
                            // a altura vai alterar quando for feita a logo
                            .background(Rectangle().fill(Color.white).shadow(radius: 3))

                        VStack (spacing: 40) {
                            Button {
                                
                            } label: {
                                Text("Solo")
                                    .foregroundColor(.black)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                    .padding()
                                    

                            }
                            .frame(width: UIScreen.main.bounds.width * 0.7375, height: UIScreen.main.bounds.height * 0.07, alignment: .center)
                                .background(Color.white)
                                .cornerRadius(8)

                            Button {
                                
                            } label: {
                                Text("Disputa")
                                    .foregroundColor(.black)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                    .padding()
                                    

                            }
                            .frame(width: UIScreen.main.bounds.width * 0.7375, height: UIScreen.main.bounds.height * 0.07, alignment: .center)
                                .background(Color.white)
                                .cornerRadius(8)
                        
                        }
                        
                        

                    }
                    
                    NavigationLink(destination: CreditsView()) {
                        Text("Créditos")
                            .foregroundColor(Color.white)
                            .underline()
                    }.navigationBarTitle("")
                        .navigationBarHidden(true)
                        
                        
                    
                }

                

            }
        }.accentColor(.white)
        
        

        
    }
}

struct BackgroundView: View {
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("Blue800"), Color("Aqua800")]),
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
