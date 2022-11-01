//
//  MemoryGameDuoView.swift
//  gameMath
//
//  Created by Jpsmor on 31/10/22.
//

import SwiftUI

struct MemoryGameDuoView: View {
    private var threeColumnGrid = [GridItem(.flexible()),
                                   GridItem(.flexible()),
                                   GridItem(.flexible()),
    ]
    
    @State var timerRunning = false
    @State var show = false
    @State private var initPopUp = true
    @State private var blurAmount: CGFloat = 32.0
    @State private var blurAmountFinal: CGFloat = 0.0
    @State var confetti: Bool = false
    @State var finishConfetti: Bool = false
    
    @State var confetti2: Bool = false
    @State var finishConfetti2: Bool = false
    @State private var duoPopUp = false
    @State private var win1 : Bool = false
    @State private var win2 : Bool = false
    @State private var textGame: String = "Encontre os pares dos personagens.\n\n Ganha quem encontrar todos primeiro."
    @State var cards = createCardList().shuffled()
    @State var cards2 = createCardList().shuffled()
    @State var MatchedCards = [Card]()
    @State var MatchedCards2 = [Card]()
    @State var UserChoices = [Card]()
    @State var UserChoices2 = [Card]()
    
    let timerTimer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    
    var body: some View{
        ZStack{
                VStack(spacing: 0) {
                    ZStack {
                        VStack{
                            Spacer()
                            LazyVGrid(columns: threeColumnGrid, spacing: 20){
                                ForEach(cards){card in
                                    MemoryCardDuoView(cardDuo: card,
                                                    MatchedCards: $MatchedCards,
                                                    UserChoices: $UserChoices)
                                    
                                }
                            }
                            .rotationEffect(Angle(degrees: 180))
                            
                            Text("Encontre todos os pares!")
                                .rotationEffect(Angle(degrees: 180))
                                .foregroundColor(Color("GrayFullWhite"))
                            Spacer()
                                .frame(height: 5)
                            
                        }
                        .blur(radius: blurAmountFinal)
                        if win1 || win2 {
                            FinishMCDView(show: $duoPopUp, blur: $blurAmountFinal,  win: $win1)
                        }
                        
                        EmitterView()
                            .scaleEffect(confetti ? 1 : 0, anchor: .top)
                            .opacity(confetti && !finishConfetti ? 1 : 0)
                            .ignoresSafeArea()
                    }
                .frame(height: UIScreen.main.bounds.height * 0.5)
                .background(Color("yellow"))
                    ZStack {
                        VStack{
                            
                            Spacer()
                                .frame(height: 5)
                            Text("Encontre todos os pares!")
                                .foregroundColor(Color("yellow"))
                            LazyVGrid(columns: threeColumnGrid, spacing: 20){
                                ForEach(cards2){card in
                                    MemoryCardDuoBottomView(cardDuo: card,
                                                    MatchedCards: $MatchedCards2,
                                                    UserChoices: $UserChoices2)
                                    
                                }
                            }
                            Spacer()
                            
                        }
                        .blur(radius: blurAmountFinal)
                        if win1 || win2 {
                            FinishMCDView(show: $duoPopUp, blur: $blurAmountFinal,  win: $win2)
                        }
                        
                        EmitterView()
                            .scaleEffect(confetti2 ? 1 : 0, anchor: .top)
                            .opacity(confetti2 && !finishConfetti2 ? 1 : 0)
                            .ignoresSafeArea()
                    }
                .frame(height: UIScreen.main.bounds.height * 0.5)
                .background(Color("GrayFullWhite"))
            }.blur(radius: blurAmount)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            InitPopUpMCD(show: $initPopUp, blur: $blurAmount, timerRun: $timerRunning, textGame: $textGame)
            
        }.onReceive(timerTimer){
            _ in
            if MatchedCards.count == 12 {
                win1 = true
                duoPopUp = true
                blurAmountFinal = 32.0
                withAnimation(.spring()) {
                    confetti = true
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    withAnimation(.easeInOut(duration: 1.5)){
                        finishConfetti = true
                    }
                }
            }
            if MatchedCards2.count == 12{
                win2 = true
                duoPopUp = true
                blurAmountFinal = 32.0
                withAnimation(.spring()) {
                    confetti2 = true
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    withAnimation(.easeInOut(duration: 1.5)){
                        finishConfetti2 = true
                    }
                }
                
            }
        }

    }
}
    
    struct MemoryGameDuoView_Previews: PreviewProvider {
        static var previews: some View {
            MemoryGameDuoView()
        }
    }
