//
//  SectionItemModel.swift
//  gameMath
//
//  Created by Danielly Santos Lopes da Silva on 21/10/22.
//

import SwiftUI


class SectionItemModel {
    let activities: [ActivityItemModel]
    
    init(activities: [ActivityItemModel]) {
        self.activities = activities
    }
    
    static func initGameSolo() -> SectionItemModel {
        
        //primeira atividade 
        
        //model de numero escrito
        let exerciceCorrectOne: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "DOZE", toGuess: true),
            ]
            
            //botoes para advinhar
            let exerciceButtonsOne: [GameButtonModel] = [
                GameButtonModel(syllable: "12", buttonColor: .cyan, textColor: .white, isCorrect: true),
                GameButtonModel(syllable: "29", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "64", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "13", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "1", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "10", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "34", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "92", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "88", buttonColor: .cyan, textColor: .white, isCorrect: false)
       
            ]
        
        let exerciceOne: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsOne, numberCorrect: exerciceCorrectOne)
            
            
        
        return SectionItemModel(activities: [exerciceOne])
        
    }
    
}
