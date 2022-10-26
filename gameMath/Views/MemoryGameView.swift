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
    
    
    @State var cards = createCardList().shuffled()
    @State var MatchedCards = [Card]()
    @State var UserChoices = [Card]()

    let timerTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var time: Int = 40
    
    var body: some View{
        GeometryReader{geo in
            ZStack{
                
                BackgroundView()
                
                VStack{
                    
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.white)
                        Circle()
                        //                                .foregroundColor(.white)
                        //                                .font(.system(size: 40, weight: .semibold))
                            .fill(.clear)
                            .frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.height * 0.2, alignment: .center)
                        
                        //                        .modifier(AnimatingNumberOverlay(number: CGFloat(points)))
                    }
                    
                    ProgressBar(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.03, percent: CGFloat(time), color: time > 20 ? .white : ((time > 5) ? .yellow : .red))
                        .animation(.spring())
                        .offset(x: 0, y: -48)
                    
                    LazyVGrid(columns: threeColumnGrid, spacing: 20){
                        ForEach(cards){card in
                            MemoryCardView(card: card,
                                           //width:(geo.size.width/4 - 10),
                                           MatchedCards: $MatchedCards,
                                           UserChoices: $UserChoices)
//                             .padding(2)
                            
                            
                        }
                    }
                    
                }
            }
            
        }
    }
    
}


struct MemoryGameView_Previews: PreviewProvider {
    static var previews: some View {
        MemoryGameView()
    }
}
