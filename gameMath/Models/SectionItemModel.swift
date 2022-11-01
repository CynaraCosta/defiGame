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
            GameButtonModel(syllable: "12", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "29", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "64", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "13", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "1", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "10", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"),sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "34", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "92", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "88", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceOne: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsOne, numberCorrect: exerciceCorrectOne)
        
        let exerciceCorrectTwo: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "QUARENTA",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        //botoes para advinhar
        let exerciceButtonsTwo: [GameButtonModel] = [
            GameButtonModel(syllable: "10", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "23", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "94", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "16", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "65", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound:SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "40", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "34", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "21", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "9", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceTwo: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsTwo, numberCorrect: exerciceCorrectTwo)
        
        let exerciceCorrectThree: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "VINTE",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsThree: [GameButtonModel] = [
            GameButtonModel(syllable: "99", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "16", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "30", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "20", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "17", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "40", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "24", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "31", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "48", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceThree: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsThree, numberCorrect: exerciceCorrectThree)
        
        let exerciceCorrectFour: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "CINQUENTA",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsFour: [GameButtonModel] = [
            GameButtonModel(syllable: "98", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "34", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "67", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "71", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "62", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "46", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "54", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "61", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "50", buttonColor:Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true)
        ]
        
        let exerciceFour: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsFour, numberCorrect: exerciceCorrectFour)
        
        let exerciceCorrectFive: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "OITENTA",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsFive: [GameButtonModel] = [
            GameButtonModel(syllable: "76", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "43", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "76", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "15", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "26", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "80", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "35", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "16", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "12", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceFive: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsFive, numberCorrect: exerciceCorrectFive)
        
        
        let exerciceCorrectSix: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "CINQUENTA E CINCO",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsSix: [GameButtonModel] = [
            GameButtonModel(syllable: "12", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "21", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "47", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "55", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "29", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "90", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "9", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "1", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "17", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceSix: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsSix, numberCorrect: exerciceCorrectSix)
        
        
        let exerciceCorrectSeven: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "DOIS",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsSeven: [GameButtonModel] = [
            GameButtonModel(syllable: "13", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "61", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "10", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "55", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "31", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "94", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "2", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "41", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "89", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceSeven: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsSeven, numberCorrect: exerciceCorrectSeven)
        
        
        let exerciceCorrectEight: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "VINTE E UM",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsEight: [GameButtonModel] = [
            GameButtonModel(syllable: "2", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "89", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "21", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "35", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "51", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "61", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "3", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "14", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "8", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceEight: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsEight, numberCorrect: exerciceCorrectEight)
        
        
        let exerciceCorrectNine: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "DEZ",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsNine: [GameButtonModel] = [
            GameButtonModel(syllable: "17", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "91", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "87", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "75", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "1", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "16", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "51", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "7", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "10", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true)
        ]
        
        let exerciceNine: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsNine, numberCorrect: exerciceCorrectNine)
        
        
        let exerciceCorrecTen: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "TRINTA",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsTen: [GameButtonModel] = [
            GameButtonModel(syllable: "7", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "19", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "87", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "75", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "30", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "31", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "43", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "40", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "61", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceTen: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsTen, numberCorrect: exerciceCorrecTen)
        
        let exerciceCorrecEleven: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "OITO",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsEleven: [GameButtonModel] = [
            GameButtonModel(syllable: "7", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "19", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "57", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "5", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "89", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: false),
            GameButtonModel(syllable: "8", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "3", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "18", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "16", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceEleven: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsEleven, numberCorrect: exerciceCorrecEleven)
        
        let exerciceCorrecTtwelve: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "OITENTA E CINCO",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
            
        ]
        
        let exerciceButtonsTwelve: [GameButtonModel] = [
            GameButtonModel(syllable: "12", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "29", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "65", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "13", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "1", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "85", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"),sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "34", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "92", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "88", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceTwelve: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsTwelve, numberCorrect: exerciceCorrecTtwelve)
        
        
        let exerciceCorrectThirteen: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "VINTE E OITO",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        //botoes para advinhar
        let exerciceButtonsThirteen: [GameButtonModel] = [
            GameButtonModel(syllable: "18", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "23", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "94", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "16", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "65", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound:SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "40", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "28", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "21", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "98", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceThirteen: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsThirteen, numberCorrect: exerciceCorrectThirteen)
        
        let exerciceCorrectFourteen: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "SETENTA E TRÊS",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsFourteen: [GameButtonModel] = [
            GameButtonModel(syllable: "93", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "73", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "67", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "71", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "62", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "46", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "54", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "63", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "50", buttonColor:Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceFourteen: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsFourteen, numberCorrect: exerciceCorrectFourteen)
        
        let exerciceCorrectFifteen: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "QUINZE",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsFifteen: [GameButtonModel] = [
            GameButtonModel(syllable: "76", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "43", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "76", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "45", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "26", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "80", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "35", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "15", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "12", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceFifteen: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsFifteen, numberCorrect: exerciceCorrectFifteen)
        
        let exerciceCorrectSixteen: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "QUARENTA E NOVE",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsSixteen: [GameButtonModel] = [
            GameButtonModel(syllable: "13", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "61", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "10", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "55", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "49", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "94", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "2", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "41", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "89", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceSixteen: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsSixteen, numberCorrect: exerciceCorrectSixteen)
        
        let exerciceCorrectSeventeen: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "SETE",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsSeventeen: [GameButtonModel] = [
            GameButtonModel(syllable: "17", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "91", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "7", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "75", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "1", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "16", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "51", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "7", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "10", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceSeventeen: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsSeventeen, numberCorrect: exerciceCorrectSeventeen)
        
        
        let exerciceCorrectEighteen: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "NOVENTA E NOVE",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsEighteen: [GameButtonModel] = [
            GameButtonModel(syllable: "9", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "19", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "87", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "75", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "30", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "99", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "43", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "90", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "61", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceEighteen: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsEighteen, numberCorrect: exerciceCorrectEighteen)
        
        
        let exerciceCorrectNineteen: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "SESSENTA E OITO",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsNineteen: [GameButtonModel] = [
            GameButtonModel(syllable: "68", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "91", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "87", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "75", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "30", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "48", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "43", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "40", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "1", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceNineteen: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsNineteen, numberCorrect: exerciceCorrectNineteen)
        
        
        
        
        let exerciceCorrectTwenty: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "OITENTA E OITO",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsTwenty: [GameButtonModel] = [
            GameButtonModel(syllable: "8", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "19", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "88", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "75", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "10", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "48", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "43", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "98", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "8", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
    
        let exerciceTwenty: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsTwenty, numberCorrect: exerciceCorrectTwenty)
        
        
        
        let exerciceCorrectTwentyOne: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "QUATRO",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsTwentyOne: [GameButtonModel] = [
            GameButtonModel(syllable: "8", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "1", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "88", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "44", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "10", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "64", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "43", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "24", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "4", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true)
        ]
        
    
        let exerciceTwentyOne: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsTwentyOne, numberCorrect: exerciceCorrectTwentyOne)
        
        let exerciceCorrectTwentyTwo: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "TRINTA E QUATRO",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsTwentyTwo: [GameButtonModel] = [
            GameButtonModel(syllable: "1", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "2", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "84", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "44", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "10", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "64", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "34", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "24", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "9", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
    
        let exerciceTwentyTwo: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsTwentyTwo, numberCorrect: exerciceCorrectTwentyTwo)
        
        let exerciceCorrectTwentyThree: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "ZERO",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsTwentyThree: [GameButtonModel] = [
            GameButtonModel(syllable: "10", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "2", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "84", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "44", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "10", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "0", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "40", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "24", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "0", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
    
        let exerciceTwentyThree: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsTwentyThree, numberCorrect: exerciceCorrectTwentyThree)
        
        
        let exerciceCorrectTwentyFour: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "SETE",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsTwentyFour: [GameButtonModel] = [
            GameButtonModel(syllable: "17", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "77", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "44", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "44", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "10", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "0", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "7", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "24", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "0", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
    
        let exerciceTwentyFour: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsTwentyFour, numberCorrect: exerciceCorrectTwentyFour)
        
        
        let exerciceCorrectTwentyFive: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "OITENTA E UM",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsTwentyFive: [GameButtonModel] = [
            GameButtonModel(syllable: "1", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "77", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "44", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "81", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "41", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "0", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "7", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "24", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "91", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
    
        let exerciceTwentyFive: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsTwentyFive, numberCorrect: exerciceCorrectTwentyFive)
        
        let exerciceCorrectTwentySix: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "VINTE E NOVE",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsTwentySix: [GameButtonModel] = [
            GameButtonModel(syllable: "99", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "89", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "44", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "81", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "0", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "0", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "7", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "19", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "29", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true)
        ]
        
    
        let exerciceTwentySix: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsTwentySix, numberCorrect: exerciceCorrectTwentySix)
        
        let exerciceCorrectTwentySeven: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "TRINTA E NOVE",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsTwentySeven: [GameButtonModel] = [
            GameButtonModel(syllable: "39", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "89", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "44", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "81", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "9", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "0", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "7", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "19", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "29", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
    
        let exerciceTwentySeven: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsTwentySeven, numberCorrect: exerciceCorrectTwentySeven)
        
        let exerciceCorrectTwentyEight: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "SETENTA E DOIS",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsTwentyEight: [GameButtonModel] = [
            GameButtonModel(syllable: "32", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "89", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "72", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "81", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "9", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "0", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "2", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "22", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "29", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
    
        let exerciceTwentyEight: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsTwentyEight, numberCorrect: exerciceCorrectTwentyEight)
        
        
        let exerciceCorrectTwentyNine: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "QUARENTA E CINCO",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsTwentyNine: [GameButtonModel] = [
            GameButtonModel(syllable: "25", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "4", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "72", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "15", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "9", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "35", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "54", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "45", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "84", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
    
        let exerciceTwentyNine: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsTwentyNine, numberCorrect: exerciceCorrectTwentyNine)
        
        
        let exerciceCorrectThirty: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "NOVENTA E QUATRO",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsThirty: [GameButtonModel] = [
            GameButtonModel(syllable: "24", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "4", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "14", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "94", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "9", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "35", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "54", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "44", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "84", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
    
        let exerciceThirty: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsThirty, numberCorrect: exerciceCorrectThirty)
        
        
        let exerciceCorrectThirtyOne: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "VINTE E DOIS",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
            
        ]
        
        let exerciceButtonsThirtyOne: [GameButtonModel] = [
            GameButtonModel(syllable: "22", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "29", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "64", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "13", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "1", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "10", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"),sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "12", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "92", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "82", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceThirtyOne: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsThirtyOne, numberCorrect: exerciceCorrectThirtyOne)
        
        let exerciceCorrectThirtyTwo: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "QUARENTA E QUATRO",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        //botoes para advinhar
        let exerciceButtonsThirtyTwo: [GameButtonModel] = [
            GameButtonModel(syllable: "4", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "23", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "94", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "16", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "65", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound:SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "44", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "34", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "21", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "14", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceThirtyTwo: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsThirtyTwo, numberCorrect: exerciceCorrectThirtyTwo)
        
        
        let exerciceCorrectThirtyThree: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "VINTE E NOVE",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsThirtyThree: [GameButtonModel] = [
            GameButtonModel(syllable: "99", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "16", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "30", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "29", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "17", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "40", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "24", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "31", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "48", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceThirtyThree: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsThirtyThree, numberCorrect: exerciceCorrectThirtyThree)
        
        
        let exerciceCorrectThirtyFour: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "CINQUENTA E DOIS",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsThirtyFour: [GameButtonModel] = [
            GameButtonModel(syllable: "98", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "34", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "67", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "71", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "62", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "46", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "54", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "61", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "52", buttonColor:Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true)
        ]
        
        let exerciceThirtyFour: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsThirtyFour, numberCorrect: exerciceCorrectThirtyFour)
        
        let exerciceCorrectThirtyFive: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "SEIS",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsThirtyFive: [GameButtonModel] = [
            GameButtonModel(syllable: "76", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "43", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "76", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "15", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "26", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "6", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "35", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "16", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "12", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceThirtyFive: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsThirtyFive, numberCorrect: exerciceCorrectThirtyFive)
        
        
        let exerciceCorrectThirtySix: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "CINCO",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsThirtySix: [GameButtonModel] = [
            GameButtonModel(syllable: "12", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "21", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "47", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "5", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "29", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "90", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "9", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "1", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "17", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceThirtySix: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsThirtySix, numberCorrect: exerciceCorrectThirtySix)
        
        let exerciceCorrectThirtySeven: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "NOVENTA E DOIS",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsThirtySeven: [GameButtonModel] = [
            GameButtonModel(syllable: "13", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "61", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "10", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "92", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "31", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "94", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "2", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "41", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "89", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceThirtySeven: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsThirtySeven, numberCorrect: exerciceCorrectThirtySeven)
        
        
        let exerciceCorrectThirtyEight: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "VINTE",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsThirtyEight: [GameButtonModel] = [
            GameButtonModel(syllable: "2", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "89", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "20", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "35", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "51", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "61", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "3", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "14", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "8", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceThirtyEight: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsThirtyEight, numberCorrect: exerciceCorrectThirtyEight)
        
        
        let exerciceCorrectThirtyNine: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "DEZ",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsThirtyNine: [GameButtonModel] = [
            GameButtonModel(syllable: "17", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "91", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "87", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "75", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "1", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "16", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "51", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "7", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "10", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true)
        ]
        
        let exerciceThirtyNine: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsThirtyNine, numberCorrect: exerciceCorrectThirtyNine)
        
        let exerciceCorrectForty: [NumberCorrectModel] = [
            NumberCorrectModel(syllable: "TRINTA",
                               buttonColor: Color("GrayFullWhite"), textColor: Color("Ocean"),
                               toGuess: true),
        ]
        
        let exerciceButtonsForty: [GameButtonModel] = [
            GameButtonModel(syllable: "7", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "19", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "87", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "75", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "30", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.hit, isCorrect: true),
            GameButtonModel(syllable: "31", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "43", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "40", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false),
            GameButtonModel(syllable: "61", buttonColor: Color("GrayFullWhite"), textColor: Color("Blue1000"), sound: SoundOption.error, isCorrect: false)
        ]
        
        let exerciceForty: ActivityItemModel = ActivityItemModel(gameButton: exerciceButtonsForty, numberCorrect: exerciceCorrectForty)
        
       
        
        
        
        return SectionItemModel(activities: [exerciceOne, exerciceTwo, exerciceThree, exerciceFour, exerciceFive, exerciceSix, exerciceSeven, exerciceEight, exerciceNine, exerciceTen, exerciceEleven, exerciceTwelve, exerciceFourteen, exerciceFifteen, exerciceSixteen, exerciceSeventeen, exerciceEighteen,  exerciceNineteen, exerciceTwenty, exerciceTwentyOne, exerciceTwentyTwo, exerciceTwentyThree, exerciceTwentyFour, exerciceTwentyFive, exerciceTwentySix, exerciceTwentySeven, exerciceTwentyEight,exerciceTwentyNine, exerciceThirty, exerciceThirtyOne, exerciceThirtyTwo, exerciceThirtyThree, exerciceThirtyFour, exerciceThirtySix, exerciceThirtySeven, exerciceThirtyEight, exerciceThirtyNine, exerciceForty])
        
    }
    
}
