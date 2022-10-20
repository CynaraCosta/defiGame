//
//  FinishSoloView.swift
//  gameMath
//
//  Created by Cynara Costa on 19/10/22.
//

import SwiftUI

struct FinishSoloView: View {
    
    @Binding var points: Int
    
    var body: some View {
        
        ZStack {
            BackgroundView()
            VStack (spacing: 72){
                Text("Parabéns você conseguiu:")
                    .font(.system(size: 26, weight: .bold))
                    .foregroundColor(.white)
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(Color("PurpleDetail"))
                        .frame(width: UIScreen.main.bounds.width * 0.775, height: UIScreen.main.bounds.height * 0.22)
//                        .border(Color.white, width: 2)
                        .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(Color.white, lineWidth: 1)
                                )
                    
                    VStack {
                        Image("crown")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 0.18, height: UIScreen.main.bounds.height * 0.06)
                        
                        Text("\(points) pontos!")
                            .font(.system(size: 42, weight: .bold))
                            .foregroundColor(.white)
                    }
                }
                
                VStack (spacing: 24) {
                    
                    NavigationLink(destination: MaioraisVIew().navigationBarBackButtonHidden(true)){
                        Text("Jogar Novamente")
                            .foregroundColor(Color.black)
                            .fixedSize(horizontal: false, vertical: true)
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: UIScreen.main.bounds.width * 0.775, height: UIScreen.main.bounds.height * 0.06)
                            .background(Rectangle().fill(Color.white).shadow(radius: 3))
                            .cornerRadius(50)
                            .font(.system(size: 20, weight: .semibold))
                    }

                    NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)){
                        Text("Voltar ao menu")
                            .fixedSize(horizontal: false, vertical: true)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: UIScreen.main.bounds.width * 0.775, height: UIScreen.main.bounds.height * 0.06)
                            .background(Rectangle().fill(Color.white).shadow(radius: 3))
                            .cornerRadius(50)
                            .font(.system(size: 20, weight: .semibold))

                    }.navigationBarTitle("")
                        .navigationBarHidden(true)
                        
                    
                    
                    
//                    Text("Jogar Novamente")
//                        .foregroundColor(Color.black)
//                        .fixedSize(horizontal: false, vertical: true)
//                        .multilineTextAlignment(.center)
//                        .padding()
//                        .frame(width: UIScreen.main.bounds.width * 0.775, height: UIScreen.main.bounds.height * 0.06)
//                        .background(Rectangle().fill(Color.white).shadow(radius: 3))
//                        .cornerRadius(50)
//                        .font(.system(size: 20, weight: .semibold))
//
//
//                    Text("Voltar ao menu")
//                        .fixedSize(horizontal: false, vertical: true)
//                        .foregroundColor(Color.black)
//                        .multilineTextAlignment(.center)
//                        .padding()
//                        .frame(width: UIScreen.main.bounds.width * 0.775, height: UIScreen.main.bounds.height * 0.06)
//                        .background(Rectangle().fill(Color.white).shadow(radius: 3))
//                        .cornerRadius(50)
//                        .font(.system(size: 20, weight: .semibold))
                    
                }
            
                
            }
            
            
        }
        
    }
}

//struct FinishSoloView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            FinishSoloView(points: $points)
//        }
//    }
//}