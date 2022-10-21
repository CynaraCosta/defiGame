//
//  SectionItemModel.swift
//  gameMath
//
//  Created by Danielly Santos Lopes da Silva on 21/10/22.
//

import SwiftUI


class SectionItemModel {
    let activities: [ActivityItemModel]
    
    init(activities: [ActivityItemModel]){
        self.activities = activities
        
    }
    
    
    static func initNumber() -> SectionItemModel {
        
        //model de numero escrito
        let atividadeUm: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "DOZE", toGuess: true),
            
            ]
            
            //botoes para advinhar
            let atividadeUmBotao: [GameButtonModel] = [
                GameButtonModel(syllable: "12", buttonColor: .cyan, textColor: .white, isCorrect: true),
                GameButtonModel(syllable: "12", buttonColor: .cyan, textColor: .white, isCorrect: true),
                GameButtonModel(syllable: "12", buttonColor: .cyan, textColor: .white, isCorrect: true),
                GameButtonModel(syllable: "12", buttonColor: .cyan, textColor: .white, isCorrect: true),
                GameButtonModel(syllable: "12", buttonColor: .cyan, textColor: .white, isCorrect: true),
                GameButtonModel(syllable: "12", buttonColor: .cyan, textColor: .white, isCorrect: true),
                GameButtonModel(syllable: "12", buttonColor: .cyan, textColor: .white, isCorrect: true),
                GameButtonModel(syllable: "12", buttonColor: .cyan, textColor: .white, isCorrect: true),
                GameButtonModel(syllable: "12", buttonColor: .cyan, textColor: .white, isCorrect: true)
                
       
            ]
        
        let atividadeUmBotao: ActivityItemModel = ActivityItemModel(gameButton: atividadeUmBotao, numberCorrect: atividadeUm)
            
            
        
        return SectionItemModel(activities: [atividadeUm, ])
        
    }
    
}
