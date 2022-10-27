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
        
        let exerciceCorrectOne: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "DOZE",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
            
        ]
        
        let exerciceButtonsOne: [GameButtonModel] = [
            GameButtonModel(syllable: "12", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: true),
            GameButtonModel(syllable: "29", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "64", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "13", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "1", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "10", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "34", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "92", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "88", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false)
        ]
        
        let exerciceOne: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsOne, numberCorrect: exerciceCorrectOne)
        
        let exerciceCorrectTwo: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "QUARENTA",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        //botoes para advinhar
        let exerciceButtonsTwo: [GameButtonModel] = [
            GameButtonModel(syllable: "10", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "23", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "94", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "16", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "65", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "40", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: true),
            GameButtonModel(syllable: "34", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "21", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "9", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false)
        ]
        
        let exerciceTwo: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsTwo, numberCorrect: exerciceCorrectTwo)
        
        let exerciceCorrectThree: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "VINTE",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsThree: [GameButtonModel] = [
            GameButtonModel(syllable: "99", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "16", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "30", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "20", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: true),
            GameButtonModel(syllable: "17", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "40", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "24", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "31", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "48", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false)
        ]
        
        let exerciceThree: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsThree, numberCorrect: exerciceCorrectThree)
        
        let exerciceCorrectFour: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "CINQUENTA",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsFour: [GameButtonModel] = [
            GameButtonModel(syllable: "98", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "34", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "67", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "71", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "62", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "46", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "54", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "61", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: false),
            GameButtonModel(syllable: "50", buttonColor:Color("GrayFullWhite"), textColor: Color("Blue1000"), isCorrect: true)
        ]
        
        let exerciceFour: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsFour, numberCorrect: exerciceCorrectFour)
        
        let exerciceCorrectFive: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "OITENTA",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsFive: [GameButtonModel] = [
            GameButtonModel(syllable: "76", buttonColor: .cyan, textColor: .white, isCorrect: false),
            GameButtonModel(syllable: "43", buttonColor: .cyan, textColor: .white, isCorrect: false),
            GameButtonModel(syllable: "76", buttonColor: .cyan, textColor: .white, isCorrect: false),
            GameButtonModel(syllable: "15", buttonColor: .cyan, textColor: .white, isCorrect: false),
            GameButtonModel(syllable: "26", buttonColor: .cyan, textColor: .white, isCorrect: false),
            GameButtonModel(syllable: "80", buttonColor: .cyan, textColor: .white, isCorrect: true),
            GameButtonModel(syllable: "35", buttonColor: .cyan, textColor: .white, isCorrect: false),
            GameButtonModel(syllable: "16", buttonColor: .cyan, textColor: .white, isCorrect: false),
            GameButtonModel(syllable: "12", buttonColor: .cyan, textColor: .white, isCorrect: false)
        ]
        
        let exerciceFive: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsFive, numberCorrect: exerciceCorrectFive)
        
        
        
        return SectionItemModel(activities: [exerciceOne, exerciceTwo, exerciceThree, exerciceFour, exerciceFive])
        
    }
    
}
