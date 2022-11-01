//
//  InitPopUpMCDView.swift
//  gameMath
//
//  Created by Jpsmor on 31/10/22.
//

import SwiftUI

struct InitPopUpMCD: View {
    
    @Binding var show: Bool
    @Binding var blur: CGFloat
    @Binding var timerRun: Bool
    @Binding var textGame: String
    
    var body: some View {
        if show {
            ZStack {
                Rectangle()
                    .fill(.white)
                    .frame(width: UIScreen.main.bounds.width * 0.7375, height: UIScreen.main.bounds.height * 0.6, alignment: .center)
                    .transition(.scale)
                    .cornerRadius(16)
                
                VStack (spacing: 40) {
                    Text("Como jogar?")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.black)
                    
                    Text(textGame)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 16, weight: .light))
                        .frame(width: UIScreen.main.bounds.width * 0.6)
                        .foregroundColor(.black)
                    
                    
                    Button {
                        withAnimation{
                            show.toggle()
                            blur = 0.0
                            timerRun = true
                        }
                    }label: {
                        Text("Jogar")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                            .padding()
                            .frame(width: (UIScreen.main.bounds.width * 0.6) * 0.65)
                            .background(Color("yellow"))
                            .cornerRadius(50)
                    }
                    
                }
                
            }
        }
        
    }
    
}

struct InitPopUpMCDView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MemoryGameDuoView()
        }
    }
}
