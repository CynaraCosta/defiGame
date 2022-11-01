//
//  MemoryCardDuoView.swift
//  gameMath
//
//  Created by Jpsmor on 31/10/22.
//

import SwiftUI

struct MemoryCardDuoView: View {
    
    @ObservedObject var cardDuo:Card
    let width: CGFloat = UIScreen.main.bounds.width * 0.18
  
    @Binding var MatchedCards: [Card]
    @Binding var UserChoices: [Card]
    
    var body: some View {
        if cardDuo.isFacedUp || MatchedCards.contains(where: {$0.id == cardDuo.id}){
            Text(cardDuo.text )
                .multilineTextAlignment(.center)
                .font(.system(size:40))
                //.padding()
                .frame(width: width, height: width)
                .background(Color("GrayFullWhite"))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("yellow"))
                    
                )
        } else {
            Text("?")
                .font(.system(size:40))
                .foregroundColor(Color("yellow"))
                .padding()
                .frame(width: width, height: width)
                .background(Color("GrayFullWhite"))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("yellow"))
                )
                .onTapGesture {
                    if UserChoices.count == 0 {
                        cardDuo.turnOver()
                        UserChoices.append(cardDuo)
                    } else if UserChoices.count == 1 {
                        cardDuo.turnOver()
                        UserChoices.append(cardDuo)
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
            
            playSound(sound: "hit")
            HapticManager.instance.impact(style: .light)
        }
        
        UserChoices.removeAll()
        
    }
}
