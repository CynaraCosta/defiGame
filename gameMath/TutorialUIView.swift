//
//  TutorialUIView.swift
//  gameMath
//
//  Created by Danielly Santos Lopes da Silva on 10/10/22.
//

import SwiftUI

struct TutorialUIView: View {
    var body: some View {
        ZStack {
            BackgroundViewTutorial()
            
            VStack(spacing: 111) {
                //let image =
                Image("cardvazio")
                
                
                VStack(spacing: 32) {
                    Text("Como Jogar?").font(.body)
                        .foregroundColor(Color("Ocean")).fontWeight(.medium)
                        
                    
                    
                    Text("Os jogadores precisam encontrar o número escrito por extenso solicitado, nos botões abaixo").font(.body).foregroundColor(Color("Ocean")).fontWeight(.medium)
                    
                }
                .padding()
                .multilineTextAlignment(.center)
               
//              Rectangle()
//                    .frame(width: 234, height: 327)
//                    .foregroundColor(.white)
//                    .cornerRadius(8)
//                    .overlay(Text("oii"))
                  
                
                
            }
            
            
            
        }
        
        
    
    
    }
}

struct BackgroundViewTutorial: View {
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("Ocean"), Color("Aqua")]),
                       startPoint: .bottomTrailing,
                       endPoint: .topLeading)
            .edgesIgnoringSafeArea(.all)
    }
}




struct TutorialUIView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialUIView()
    }
}
