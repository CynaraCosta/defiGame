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
            NumberCorrectModel(syllable: "DOZE",
            toGuess: true),
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
        
        let exerciceCorrectTwo: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "QUARENTA",
            toGuess: true),
            ]
            
            //botoes para advinhar
            let exerciceButtonsTwo: [GameButtonModel] = [
                GameButtonModel(syllable: "10", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "23", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "94", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "16", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "65", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "40", buttonColor: .cyan, textColor: .white, isCorrect: true),
                GameButtonModel(syllable: "34", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "21", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "9", buttonColor: .cyan, textColor: .white, isCorrect: false)
            ]
        
        let exerciceTwo: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsTwo, numberCorrect: exerciceCorrectTwo)
        
        let exerciceCorrectThree: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "VINTE",
            toGuess: true),
            ]
            
            //botoes para advinhar
            let exerciceButtonsThree: [GameButtonModel] = [
                GameButtonModel(syllable: "99", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "16", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "30", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "20", buttonColor: .cyan, textColor: .white, isCorrect: true),
                GameButtonModel(syllable: "17", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "40", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "24", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "31", buttonColor: .cyan, textColor: .white, isCorrect: false),
                GameButtonModel(syllable: "48", buttonColor: .cyan, textColor: .white, isCorrect: false)
            ]
        
        let exerciceThree: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsThree, numberCorrect: exerciceCorrectThree)
        
        
        
            
            
        
        return SectionItemModel(activities: [exerciceOne, exerciceTwo, exerciceThree,])
        
    }
    
}
