//
//  WheresTheNumberDuoView.swift
//  gameMath
//
//  Created by Jpsmor on 29/10/22.
//

import SwiftUI

struct WheresTheNumberDuoView: View {
    var numberTranslation = [1: "Um",
                             2: "Dois",
                             3: "Três",
                             4: "Quatro",
                             5: "Cinco",
                             6: "Seis",
                             7: "Sete",
                             8: "Oito",
                             9: "Nove",
                             10: "Dez",
                             11: "Onze",
                             12: "Doze",
                             13: "Treze",
                             14: "Quatorze",
                             15: "Quinze",
                             16: "Dezesseis",
                             17: "Dezessete",
                             18: "Dezoito",
                             19: "Dezenove",
                             20: "Vinte",
                             21: "Vinte e um",
                             22: "Vinte e dois",
                             23: "Vinte e três",
                             24: "Vinte e quatro",
                             25: "Vinte e cinco",
                             26: "Vinte e seis",
                             27: "Vinte e sete",
                             28: "Vinte e oito",
                             29: "Vinte e nove",
                             30: "Trinta",
                             31: "Trinta e um",
                             32: "Trinta e dois",
                             33: "Trinta e três",
                             34: "Trinta e quatro",
                             35: "Trinta e cinco",
                             36: "Trinta e seis",
                             37: "Trinta e sete",
                             38: "Trinta e oito",
                             39: "Trinta e nove",
                             40: "Quarenta",
                             41: "Quarenta e um",
                             42: "Quarenta e dois",
                             43: "Quarenta e três",
                             44: "Quarenta e quatro",
                             45: "Quarenta e cinco",
                             46: "Quarenta e seis",
                             47: "Quarenta e sete",
                             48: "Quarenta e oito",
                             49: "Quarenta e nove",
                             50: "Cinquenta",
                             51: "Cinquenta e um",
                             52: "Cinquenta e dois",
                             53: "Cinquenta e três",
                             54: "Cinquenta e quatro",
                             55: "Cinquenta e cinco",
                             56: "Cinquenta e seis",
                             57: "Cinquenta e sete",
                             58: "Cinquenta e oito",
                             59: "Cinquenta e nove",
                             60: "Sessenta",
                             61: "Sessenta e um",
                             62: "Sessenta e dois",
                             63: "Sessenta e três",
                             64: "Sessenta e quatro",
                             65: "Sessenta e cinco",
                             66: "Sessenta e seis",
                             67: "Sessenta e sete",
                             68: "Sessenta e oito",
                             69: "Sessenta e nove",
                             70: "Setenta",
                             71: "Setenta e um",
                             72: "Setenta e dois",
                             73: "Setenta e três",
                             74: "Setenta e quatro",
                             75: "Setenta e cinco",
                             76: "Setenta e seis",
                             77: "Setenta e sete",
                             78: "Setenta e oito",
                             79: "Setenta e nove",
                             80: "Oitenta",
                             81: "Oitenta e um",
                             82: "Oitenta e dois",
                             83: "Oitenta e três",
                             84: "Oitenta e quatro",
                             85: "Oitenta e cinco",
                             86: "Oitenta e seis",
                             87: "Oitenta e sete",
                             88: "Oitenta e oito",
                             89: "Oitenta e nove",
                             90: "Noventa",
                             91: "Noventa e um",
                             92: "Noventa e dois",
                             93: "Noventa e três",
                             94: "Noventa e quatro",
                             95: "Noventa e cinco",
                             96: "Noventa e seis",
                             97: "Noventa e sete",
                             98: "Noventa e oito",
                             99: "Noventa e nove",
                             100: "Cem"]
    
    @State var timerRunning = false
    @State private var initPopUp = true
    @State private var blurAmount: CGFloat = 32.0
    @State private var textGame: String = "Selecione o número que está escrito na tela."
    
    @State var score1 : Int = 5
    @State var score2 : Int = 5
    @State var numberString : String = "Onze"
    @State var rightAnswer : Int = 11
    @State var rightAnswerPosition : Int = 4
    
    @State var answer1 = 22
    @State var answer2 = 49
    @State var answer3 = 10
    @State var answer4 = 11
    
    let timerTimer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    @State var time: Float = 40.0
    
    
    
    //ButtonConfigure
    var buttonWidth = 0.24
    var buttonHeight = 0.11
    var buttonCornerRadius : CGFloat = 8
    var buttonBorderThickness : CGFloat = 2
    
    //TopButtonConfigure
    var topButtonBorderColor = Color("Blue1000")
    var topButtonBGColor : Color = .white
    var topButtonTextColor = Color("Blue1000")
    
    //BotButtonConfigure
    var botButtonBorderColor = Color("GrayFullWhite")
    var botButtonBGColor = Color("Blue800")
    var botButtonTextColor : Color = .white
    
    
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    Spacer()
                        .frame(height: 7)
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.white)
                        Text(String(score1))
                            .foregroundColor(.white)
                    }
                    Spacer()
                        .frame(height: 5)
                    ProgressBar (width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height * 0.02, percent: CGFloat(time), color: time > 20 ? .white : ((time > 5) ? .yellow : .red))
                        .animation(.spring())
                    HStack {
                        Text(String(numberString))
                            .foregroundColor(topButtonTextColor)
                    }
                        .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.06)
                        .background(topButtonBGColor)
                        .cornerRadius(8)
                        .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius)
                            .stroke(topButtonBorderColor, lineWidth: buttonBorderThickness))
                    Spacer()
                        .frame(height: 30)
                    HStack {
                        Button (String(answer1)) {
                            receiveAnswer(givenAnswer: answer1, player: 1)
                            refreshData()
                        }
                        .frame(width: UIScreen.main
                            .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                        .background(topButtonBGColor)
                        .foregroundColor(topButtonTextColor)
                        .cornerRadius(buttonCornerRadius)
                        .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(topButtonBorderColor, lineWidth: buttonBorderThickness))
                        Spacer()
                        Button (String(answer2)) {
                            receiveAnswer(givenAnswer: answer2, player: 1)
                            refreshData()
                        }
                        .frame(width: UIScreen.main
                            .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                        .background(topButtonBGColor)
                        .foregroundColor(topButtonTextColor)
                        .cornerRadius(buttonCornerRadius)
                        .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(topButtonBorderColor, lineWidth: buttonBorderThickness))
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.6)
                    Spacer()
                    HStack {
                        Button (String(answer3)) {
                            receiveAnswer(givenAnswer: answer3, player: 1)
                            refreshData()
                        }
                        .frame(width: UIScreen.main
                            .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                        .background(topButtonBGColor)
                        .foregroundColor(topButtonTextColor)
                        .cornerRadius(buttonCornerRadius)
                        .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(topButtonBorderColor, lineWidth: buttonBorderThickness))
                        Spacer()
                        Button (String(answer4)) {
                            receiveAnswer(givenAnswer: answer4, player: 1)
                            refreshData()
                        }
                        .frame(width: UIScreen.main
                            .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                        .background(topButtonBGColor)
                        .foregroundColor(topButtonTextColor)
                        .cornerRadius(buttonCornerRadius)
                        .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(topButtonBorderColor, lineWidth: buttonBorderThickness))
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.6)
                    Spacer()
                }
                .frame(width: UIScreen.main.bounds.width)
                .rotationEffect(.degrees(180))
                .background(Color("Blue800"))
                VStack {
                    Spacer()
                        .frame(height: 7)
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(Color("Blue800"))
                        Text(String(score2))
                            .foregroundColor(Color("Blue800"))
                    }
                    Spacer()
                        .frame(height: 5)
                    ProgressBar (width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height * 0.02, percent: CGFloat(time), color: time > 20 ? Color("Blue800") : ((time > 5) ? .yellow : .red))
                        .animation(.spring())
                    HStack {
                        Text(String(numberString))
                            .foregroundColor(botButtonTextColor)
                    }
                        .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.06)
                        .background(botButtonBGColor)
                        .cornerRadius(8)
                        .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius)
                            .stroke(botButtonBorderColor, lineWidth: buttonBorderThickness))
                    Spacer()
                        .frame(height: 30)
                    HStack {
                        Button (String(answer1)) {
                            receiveAnswer(givenAnswer: answer1, player: 2)
                            refreshData()
                        }
                        .frame(width: UIScreen.main
                            .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                        .background(botButtonBGColor)
                        .foregroundColor(botButtonTextColor)
                        .cornerRadius(buttonCornerRadius)
                        .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(botButtonBorderColor, lineWidth: buttonBorderThickness))
                        Spacer()
                        Button (String(answer2)) {
                            receiveAnswer(givenAnswer: answer2, player: 2)
                            refreshData()
                        }
                        .frame(width: UIScreen.main
                            .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                        .background(botButtonBGColor)
                        .foregroundColor(botButtonTextColor)
                        .cornerRadius(buttonCornerRadius)
                        .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(botButtonBorderColor, lineWidth: buttonBorderThickness))
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.6)
                    Spacer()
                    HStack {
                        Button (String(answer3)) {
                            receiveAnswer(givenAnswer: answer3, player: 2)
                            refreshData()
                        }
                        .frame(width: UIScreen.main
                            .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                        .background(botButtonBGColor)
                        .foregroundColor(botButtonTextColor)
                        .cornerRadius(buttonCornerRadius)
                        .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(botButtonBorderColor, lineWidth: buttonBorderThickness))
                        Spacer()
                        Button (String(answer4)) {
                            receiveAnswer(givenAnswer: answer4, player: 2)
                            refreshData()
                        }
                        .frame(width: UIScreen.main
                            .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                        .background(botButtonBGColor)
                        .foregroundColor(botButtonTextColor)
                        .cornerRadius(buttonCornerRadius)
                        .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(botButtonBorderColor, lineWidth: buttonBorderThickness))
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.6)
                    Spacer()
                }
                .frame(width: UIScreen.main.bounds.width)
            }
            .onAppear() {
                refreshData()
            }.blur(radius: blurAmount)
            
            InitPopUp(show: $initPopUp, blur: $blurAmount, timerRun: $timerRunning, textGame: $textGame)
        }
        .onReceive(timerTimer) { _ in
            if time > 0 && timerRunning {
                time -= 0.1
                
            } else {
                timerRunning = false
                
            }
        }
    }
    
    
    //Functions
    
    func refreshData() {
        rightAnswer = Int.random(in: 1...100)
        numberString = numberTranslation[rightAnswer]!
        rightAnswerPosition = Int.random(in: 1...4)
        
        switch rightAnswerPosition {
            
        case 1 :
            answer1 = rightAnswer
            answer2 = Int.random(in: 1...100)
            while answer2 == answer1 {
                answer2 = Int.random(in: 1...100)
            }
            answer3 = Int.random(in: 1...100)
            while answer3 == answer1 || answer3 == answer2 {
                answer3 = Int.random(in: 1...100)
            }
            answer4 = Int.random(in: 1...100)
            while answer4 == answer1 || answer4 == answer2 || answer4 == answer3 {
                answer4 = Int.random(in: 1...100)
            }
            
        case 2:
            answer2 = rightAnswer
            answer1 = Int.random(in: 1...100)
            while answer1 == answer2 {
                answer1 = Int.random(in: 1...100)
            }
            answer3 = Int.random(in: 1...100)
            while answer3 == answer1 || answer3 == answer2 {
                answer3 = Int.random(in: 1...100)
            }
            answer4 = Int.random(in: 1...100)
            while answer4 == answer1 || answer4 == answer2 || answer4 == answer3 {
                answer4 = Int.random(in: 1...100)
            }
            
        case 3:
            answer3 = rightAnswer
            answer1 = Int.random(in: 1...100)
            while answer1 == answer3 {
                answer1 = Int.random(in: 1...100)
            }
            answer2 = Int.random(in: 1...100)
            while answer2 == answer1 || answer2 == answer3 {
                answer3 = Int.random(in: 1...100)
            }
            answer4 = Int.random(in: 1...100)
            while answer4 == answer1 || answer4 == answer2 || answer4 == answer3 {
                answer4 = Int.random(in: 1...100)
            }
            
        case 4:
            answer4 = rightAnswer
            answer1 = Int.random(in: 1...100)
            while answer1 == answer4 {
                answer1 = Int.random(in: 1...100)
            }
            answer2 = Int.random(in: 1...100)
            while answer2 == answer4 || answer2 == answer1 {
                answer2 = Int.random(in: 1...100)
            }
            answer3 = Int.random(in: 1...100)
            while answer3 == answer1 || answer3 == answer2 || answer3 == answer4 {
                answer3 = Int.random(in: 1...100)
            }
            
            
        default:
            print("Deu ruim")
        }
    }
    
    func receiveAnswer (givenAnswer: Int, player: Int) {
        switch player {
        case 1:
            if givenAnswer == rightAnswer {
                score1 += 1
                playSound(sound: "hit")
                HapticManager.instance.impact(style: .light)
            }
            else {
                score1 -= 1
                playSound(sound: "error")
                HapticManager.instance.impact(style: .light)
            }
        case 2:
            if givenAnswer == rightAnswer {
                score2 += 1
                playSound(sound: "hit")
                HapticManager.instance.impact(style: .light)
            }
            else {
                score2 -= 1
                playSound(sound: "error")
                HapticManager.instance.impact(style: .light)
            }
        default:
            print("Deu ruim")
        }
    }
}

struct WheresTheNumberDuoView_Previews: PreviewProvider {
    static var previews: some View {
        WheresTheNumberDuoView()
    }
}
