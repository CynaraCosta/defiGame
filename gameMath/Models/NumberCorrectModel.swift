//
//  NumberCorrectModel.swift
//  gameMath
//
//  Created by Danielly Santos Lopes da Silva on 20/10/22.
//

import SwiftUI

class NumberCorrectModel: Hashable {
    let id: UUID
    let syllable: String
    let toGuess: Bool
    let buttonColor: Color
    let textColor: Color
    
    init(syllable: String, buttonColor: Color, textColor: Color, toGuess: Bool = false) {
        self.id = UUID()
        self.syllable = syllable
        self.toGuess = toGuess
        self.textColor = textColor
        self.buttonColor = buttonColor
    }
    
    static func == (lhs:NumberCorrectModel, rhs: NumberCorrectModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(syllable)
        hasher.combine(toGuess)
        hasher.combine(textColor)
        hasher.combine(buttonColor)
    }
}
