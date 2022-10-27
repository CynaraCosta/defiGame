//
//  MemoryFinishView.swift
//  gameMath
//
//  Created by Isabela Batista on 27/10/22.
//


import SwiftUI

struct MemoryFinishView: View {
    
    @Binding var time: Int
    @State var confetti: Bool = false
    @State var finishConfetti: Bool = false
    
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
                        
                        Text("\(time) Segundos!")
                            .font(.system(size: 42, weight: .bold))
                            .foregroundColor(.white)
                    }
                }
                
                VStack (spacing: 24) {
                    
                    NavigationLink(destination: MemoryGameView().navigationBarBackButtonHidden(false)){
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
            
            
        }.onAppear{
            doConfetti()
        }
        
    }
    
    func doConfetti(){
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

