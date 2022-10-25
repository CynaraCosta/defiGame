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
    
    init(syllable: String, toGuess: Bool = false) {
        self.id = UUID()
        self.syllable = syllable
        self.toGuess = toGuess
    }
    
    static func == (lhs:NumberCorrectModel, rhs: NumberCorrectModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(syllable)
        hasher.combine(toGuess)
    }
}
