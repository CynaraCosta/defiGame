//
//  GameButtonModel.swift
//  gameMath
//
//  Created by Danielly Santos Lopes da Silva on 20/10/22.
//

import SwiftUI


class GameButtonModel: Hashable {
    let id: UUID
    let syllable: String
    let buttonColor: Color
    let textColor: Color
    let isCorrect: Bool
    
    
    init(syllable: String, buttonColor: Color, textColor: Color, isCorrect: Bool) {
        self.id = UUID()
        self.syllable = syllable
        self.textColor = textColor
        self.buttonColor = buttonColor
        self.isCorrect = isCorrect
    }
    
    static func == (lhs:GameButtonModel, rhs: GameButtonModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(syllable)
        hasher.combine(textColor)
        hasher.combine(buttonColor)
        hasher.combine(isCorrect)
        
    }
}


