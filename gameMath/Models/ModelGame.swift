//
//  ModelGame.swift
//  gameMath
//
//  Created by Cynara Costa on 14/10/22.
//

import SwiftUI

class GamesViewModel: ObservableObject {
    @Published var games: [Game] = []
    
    init() {
        games = makeGames()
    }
    
    private func makeGames() -> [Game] {
        return [Game(id: 0, title: "Conta ai!", description: "Resolver expressões matemáticas dentro do tempo determinado.", image: "conta-ai-image", viewGame: Text("MaioraisView")),
                Game(id: 1, title: "O maioral!", description: "Selecionar o maior número disposta na tela.", image: "maioral-image", viewGame: Text("MaioraisView")),
                Game(id: 2, title: "Cadê o número?", description: "Selecionar o número baseado na escrita desse número na tela.", image: "cade-numero-image", viewGame: Text("MaioraisView")),
                Game(id: 3, title: "Genius", description: "Selecionar as cores em seus locais corretos de aparecimento, que irá aumentar a dificuldade conforme as rodadas forem passando.", image: "conta-ai-image", viewGame: Text("MaioraisView"))
   ]
    }
}

class Game: ObservableObject, Identifiable {
    @Published var id: Int
    @Published var title: String
    @Published var description: String
    @Published var image: String
    @Published var viewGame: Text
    
    init(id: Int,
         title: String,
         description: String,
         image: String,
         viewGame: Text
    ) {
        self.id = id
        self.title = title
        self.description = description
        self.image = image
        self.viewGame = viewGame
    }
}


