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
        return [Game(id: 0, title: "Conta ai!", description: "Resolver expressões matemáticas dentro do tempo determinado.", image: "conta-ai-image"),
                Game(id: 1, title: "O maioral!", description: "Selecionar o maior número dos que estão dispostos na tela.", image: "maioral-image"),
                Game(id: 2, title: "Cadê o número?", description: "Selecionar o número baseado na escrita desse número na tela.", image: "cade-numero-image"),
                Game(id: 3, title: "Decorastes?", description: "Encontre os pares dos personagens no menor tempo possível.", image: "Decorastes-image")
   ]
    }
}

class Game: ObservableObject, Identifiable {
    @Published var id: Int
    @Published var title: String
    @Published var description: String
    @Published var image: String
    
    init(id: Int,
         title: String,
         description: String,
         image: String
    ) {
        self.id = id
        self.title = title
        self.description = description
        self.image = image
    }
}


