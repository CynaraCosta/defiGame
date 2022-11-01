//
//  FinishSoloCountThereView.swift
//  gameMath
//
//  Created by Jpsmor on 31/10/22.
//

import SwiftUI

struct FinishSoloCountThereView: View {
    
    @Binding var points: Int
    @Binding var newRecord: Bool
    @State var confetti: Bool = false
    @State var finishConfetti: Bool = false
    @State var textString: String = ""
    
    @AppStorage("record_countThere_solo") private var record = 0
    
    var body: some View {
        
        ZStack {
            BackgroundView()
            VStack (spacing: 72){
                Text(textString)
                    .font(.system(size: 26, weight: .bold))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(Color("PurpleDetail"))
                        .frame(width: UIScreen.main.bounds.width * 0.775, height: UIScreen.main.bounds.height * 0.22)
//                        .border(Color.white, width: 2)
                        .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(Color.white, lineWidth: 1)
                                )
                    
                    VStack (spacing: 8) {
                        Image("crown")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 0.18, height: UIScreen.main.bounds.height * 0.06)
                        
                        Text("\(points) pontos!")
                            .font(.system(size: 42, weight: .bold))
                            .foregroundColor(.white)
                        
                        Text("Recorde: \(record) pontos")
                            .font(.system(size: 20, weight: .regular))
                            .foregroundColor(.white)
                        
                    }
                }
                
                VStack (spacing: 24) {
                    
                    NavigationLink(destination: CountThereView().navigationBarBackButtonHidden(false)){
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
                        
                    

                    
                }
            
                
            }
            
            EmitterView()
                .scaleEffect(confetti ? 1 : 0, anchor: .top)
                .opacity(confetti && !finishConfetti ? 1 : 0)
                .ignoresSafeArea()
        }.onAppear {
            if points > record {
                record = points
            }
            doConfetti()
            decideText()
        }
        
    }
    
    func decideText() {
        if points == 0 {
            textString = "Não desanime, você consegue!:"
        } else if points <= 5 {
            textString = "Parabéns! Você conseguiu:"
        } else if points <= 10 {
            textString = "Nossa! Muito Bom!\nVocê conseguiu:"
        } else {
            textString = "Uau! Incrivél!\nVocê conseguiu:"
        }
        
        if newRecord && points > 0 {
            textString = "Novo recorde! Parabéns! Você conseguiu:"
        }
    }
    
    func doConfetti(){
        if newRecord && points > 0 {
            withAnimation(.spring()) {
                confetti = true
            }

            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation(.easeInOut(duration: 1)){
                    finishConfetti = true
                }
            }
        }

            }
    
}