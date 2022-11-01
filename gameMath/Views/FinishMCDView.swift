//
//  FinishMCDView.swift
//  gameMath
//
//  Created by Jpsmor on 01/11/22.
//

import SwiftUI

struct FinishMCDView: View {
    
    @Binding var show: Bool
    @Binding var blur: CGFloat
    @Binding var win: Bool
    
    var body: some View {
        
        if show {
            ZStack {
                Rectangle()
                    .fill(.white)
                    .frame(width: UIScreen.main.bounds.width * 0.75, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                    .transition(.scale)
                    .cornerRadius(16)
                
                VStack (spacing: 24) {
                    
                    VStack (spacing: 8) {
                        if win {
                            Text("Você ganhou! Parabéns!")
                                .font(.system(size: 20, weight: .regular))
                                .foregroundColor(.black)
                        } else {
                            Text("Você perdeu, não desanime!")
                                .font(.system(size: 20, weight: .regular))
                                .foregroundColor(.black)
                        }
                    }
                    
                    
                    HStack (spacing: 16) {
//                        Button {
//                            withAnimation{
//
//                            }
//                        }label: {
//                            Text("De novo!")
//                                .foregroundColor(.white)
//                                .font(.system(size: 16, weight: .semibold))
//                                .padding()
//                                .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.04)
//                                .background(Color("PurpleDetail"))
//                                .cornerRadius(50)
//                        }
//
//                        Button {
//                            withAnimation{
//
//                            }
//                        }label: {
//                            Text("Menu")
//                                .foregroundColor(.white)
//                                .font(.system(size: 16, weight: .semibold))
//                                .padding()
//                                .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.04)
//                                .background(Color("PurpleDetail"))
//                                .cornerRadius(50)
//                        }
                        NavigationLink(destination: MemoryGameDuoView().navigationBarBackButtonHidden(false)){
                            Text("De novo!")
                                .foregroundColor(Color.white)
//                                .fixedSize(horizontal: false, vertical: true)
                                .multilineTextAlignment(.center)
                                .padding()
                                .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.04)
                                .background(Rectangle().fill(Color("yellow")).shadow(radius: 3))
                                .cornerRadius(50)
                                .font(.system(size: 16, weight: .semibold))
                        }

                        NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)){
                            Text("Menu")
//                                .fixedSize(horizontal: false, vertical: true)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding()
                                .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.04)
                                .background(Rectangle().fill(Color("yellow")).shadow(radius: 3))
                                .cornerRadius(50)
                                .font(.system(size: 16, weight: .semibold))

                        }.navigationBarTitle("")
                            .navigationBarHidden(true)
                        
                    }
                    
                }
                
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.5)
            .edgesIgnoringSafeArea(.all)
        }
        
        
        
    }
}
