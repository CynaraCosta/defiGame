//
//  MemoryDetails.swift
//  gameMath
//
//  Created by Isabela Batista on 25/10/22.
//

import Foundation
import SwiftUI

class Card: Identifiable, ObservableObject{
    var id = UUID()
    @Published var isFacedUp = false
    @Published var isMatched = false
    var text:Image
    
    init(text:Image) {
        self.text = text
    }
    

    func turnOver(){
        self.isFacedUp.toggle()
    }
}

let cardValues:[Image] = [
    Image("Alazao"), Image("Dogão"), Image("Gaturro"), Image("Pandoca"), Image("Piggo"), Image("Sapoide")
]

//let cardValues:[String] = [
//    "🐼", "🐸", "🐷", "🐱", "🐶", "🐴"
//]


func createCardList() -> [Card] {
    //criando lista em branco aqui
    var cardList = [Card]()
    
    for cardValue in cardValues{
        cardList.append(Card(text: cardValue))
        cardList.append(Card(text: cardValue))

    }
    return cardList
}

let faceDownCard = Card(text: Image("Alazao") )
