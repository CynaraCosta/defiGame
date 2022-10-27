//
//  MemoryCardView.swift
//  gameMath
//
//  Created by Isabela Batista on 25/10/22.
//

import SwiftUI

struct MemoryCardView: View {
    
    @ObservedObject var card:Card
    let width: Int = 100
  
    @Binding var MatchedCards: [Card]
    @Binding var UserChoices: [Card]
    
    var body: some View {
        if card.isFacedUp || MatchedCards.contains(where: {$0.id == card.id}){
            Text(card.text )
                .multilineTextAlignment(.center)
                .font(.system(size:50))
                .padding()
                .frame(width: CGFloat(width), height: CGFloat(width))
                .background(Color("GrayFullWhite"))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Blue1000"))
                    
                )
        } else {
            Text("?")
                .font(.system(size:50))
                .foregroundColor(Color("Blue1000"))
                .padding()
                .frame(width: CGFloat(width), height: CGFloat(width))
                .background(Color("GrayFullWhite"))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Blue1000"))
                )
                .onTapGesture {
                    if UserChoices.count == 0 {
                        card.turnOver()
                        UserChoices.append(card)
                    } else if UserChoices.count == 1 {
                        card.turnOver()
                        UserChoices.append(card)
                        withAnimation(Animation.linear.delay(1)){
                            for thisCard in UserChoices{
                                thisCard.turnOver()
                            }
                        }
                        
                        checkForMatch()
                        
                    }
                }
           }
      }
    
    func checkForMatch(){
        if UserChoices[0].text == UserChoices[1].text {
            MatchedCards.append(UserChoices[0])
            MatchedCards.append(UserChoices[1])
        }
        
        UserChoices.removeAll()
    }
}

