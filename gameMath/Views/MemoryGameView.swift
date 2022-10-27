//
//  MemoryGameView.swift
//  gameMath
//
//  Created by Isabela Batista on 25/10/22.
//

import SwiftUI

struct MemoryGameView: View {
    @State var timerRunning = false
    private var threeColumnGrid = [GridItem(.flexible()),
                                   GridItem(.flexible()),
                                   GridItem(.flexible()),
    ]
    
    @State var show = false
    @State private var initPopUp = true
    @State private var blurAmount: CGFloat = 32.0
    @State private var textGame: String = "Jogo da memoria e tals blablabla."
    @State var cards = createCardList().shuffled()
    @State var MatchedCards = [Card]()
    @State var UserChoices = [Card]()
    
    let timerTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var time: Int = 0
    
    var body: some View{
        GeometryReader{geo in
            
            if MatchedCards.count != 12 {
                
                ZStack{
                    
                    BackgroundView()
                    
                    VStack{
                        
                        HStack(spacing: 16) {
                            Image(systemName: "clock.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: UIScreen.main.bounds.width*0.1, height: UIScreen.main.bounds.height*0.1)
                                .foregroundColor(.white)
                            
                            Text("\(time)")
                            
                                .font(.system(size: 40, weight:.semibold))
                                .foregroundColor(.white)
                        }
                        
                        
                        LazyVGrid(columns: threeColumnGrid, spacing: 20){
                            ForEach(cards){card in
                                MemoryCardView(card: card,
                                               MatchedCards: $MatchedCards,
                                               UserChoices: $UserChoices)
                                
                            }
                        }
                        
                    }.blur(radius: blurAmount)
                    InitPopUp(show: $initPopUp, blur: $blurAmount, timerRun: $timerRunning, textGame: $textGame)
                    
                }.onReceive(timerTimer){
                    _ in
                    if timerRunning {
                        time+=1
                    }
                    if MatchedCards.count == 12{
                        timerRunning = false
                        
                    }
                }
            } else {
                
                MemoryFinishView(time: $time)
                
            }
            
        }
    }
   
    
}


struct MemoryGameView_Previews: PreviewProvider {
    static var previews: some View {
        MemoryGameView()
    }
}
