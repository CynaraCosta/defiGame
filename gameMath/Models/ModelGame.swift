//
//  ModelGame.swift
//  gameMath
//
//  Created by Cynara Costa on 14/10/22.
//

import SwiftUI

struct Game: Identifiable {
    var id: Int
    var title: String
    var description: String
}

var games = [Game(id: 0, title: "Conta ai!", description: "Resolver expressões matemáticas dentro do tempo determinado."),
             Game(id: 1, title: "O maioral!", description: "Selecionar o maior número disposta na tela."),
             Game(id: 2, title: "Cadê o número?", description: "Selecionar o número baseado na escrita desse número na tela."),
             Game(id: 3, title: "Genius", description: "Selecionar as cores em seus locais corretos de aparecimento, que irá aumentar a dificuldade conforme as rodadas forem passando.")
]

