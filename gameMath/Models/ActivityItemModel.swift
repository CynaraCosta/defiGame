//
//  ActivityItemModel.swift
//  gameMath
//
//  Created by Danielly Santos Lopes da Silva on 20/10/22.
//

import SwiftUI

class ActivityItemModel: Hashable {
    let id: UUID
    let gameButton: [GameButtonModel]
    let numberCorrect: [NumberCorrectModel]


init(gameButton: [GameButtonModel], numberCorrect: [NumberCorrectModel]) {
    self.id = UUID()
    self.gameButton = gameButton
    self.numberCorrect = numberCorrect
}

static func == (lhs:  ActivityItemModel, rhs:  ActivityItemModel) -> Bool {
    return lhs.id == rhs.id
}


func hash(into hasher: inout Hasher) {
    hasher.combine(id)
    hasher.combine(gameButton)
    hasher.combine(numberCorrect)
}

}
