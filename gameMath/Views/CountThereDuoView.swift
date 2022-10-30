//
//  CountThereView.swift
//  gameMath
//
//  Created by Jpsmor on 10/10/22.
//

import SwiftUI


struct CountThereDuoView: View {
    
    
    @State var timerRunning = false
    @State private var initPopUp = true
    @State private var blurAmount: CGFloat = 32.0
    @State private var textGame: String = "Ache o resultado da expressão."
    
    @State var score1 : Int = 5
    @State var score2 : Int = 5
    @State var operatorOne : Int = 50
    @State var operatorTwo : Int = 35
    @State var signal = "+"
    @State var rightAnswer : Int = 85
    @State var rightAnswerPosition : Int = 4
    
    @State var answer1 = 22
    @State var answer2 = 49
    @State var answer3 = 10
    @State var answer4 = 85
    
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
                        Text(String(operatorOne))
                            .foregroundColor(topButtonTextColor)
                        Text(signal)
                            .foregroundColor(topButtonTextColor)
                        Text(String(operatorTwo))
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
                        Text(String(operatorOne))
                            .foregroundColor(botButtonTextColor)
                        Text(signal)
                            .foregroundColor(botButtonTextColor)
                        Text(String(operatorTwo))
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
        operatorOne = Int.random(in: 1...50)
        operatorTwo = Int.random(in: 1...50)
        rightAnswer = operatorOne + operatorTwo
        rightAnswerPosition = Int.random(in: 1...4)
        
        switch rightAnswerPosition {
            
        case 1 :
            answer1 = rightAnswer
            answer2 = Int.random(in: 2...100)
            while answer2 == answer1 {
                answer2 = Int.random(in: 2...100)
            }
            answer3 = Int.random(in: 2...100)
            while answer3 == answer1 || answer3 == answer2 {
                answer3 = Int.random(in: 2...100)
            }
            answer4 = Int.random(in: 2...100)
            while answer4 == answer1 || answer4 == answer2 || answer4 == answer3 {
                answer4 = Int.random(in: 2...100)
            }
            
        case 2:
            answer2 = rightAnswer
            answer1 = Int.random(in: 2...100)
            while answer1 == answer2 {
                answer1 = Int.random(in: 2...100)
            }
            answer3 = Int.random(in: 2...100)
            while answer3 == answer1 || answer3 == answer2 {
                answer3 = Int.random(in: 2...100)
            }
            answer4 = Int.random(in: 2...100)
            while answer4 == answer1 || answer4 == answer2 || answer4 == answer3 {
                answer4 = Int.random(in: 2...100)
            }
            
        case 3:
            answer3 = rightAnswer
            answer1 = Int.random(in: 2...100)
            while answer1 == answer3 {
                answer1 = Int.random(in: 2...100)
            }
            answer2 = Int.random(in: 2...100)
            while answer2 == answer1 || answer2 == answer3 {
                answer3 = Int.random(in: 2...100)
            }
            answer4 = Int.random(in: 2...100)
            while answer4 == answer1 || answer4 == answer2 || answer4 == answer3 {
                answer4 = Int.random(in: 2...100)
            }
            
        case 4:
            answer4 = rightAnswer
            answer1 = Int.random(in: 2...100)
            while answer1 == answer4 {
                answer1 = Int.random(in: 2...100)
            }
            answer2 = Int.random(in: 2...100)
            while answer2 == answer4 || answer2 == answer1 {
                answer2 = Int.random(in: 2...100)
            }
            answer3 = Int.random(in: 2...100)
            while answer3 == answer1 || answer3 == answer2 || answer3 == answer4 {
                answer3 = Int.random(in: 2...100)
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


struct CountThereDuoView_Previews: PreviewProvider {
    static var previews: some View {
        CountThereDuoView()
            .previewDevice("iPhone 12")
    }
}
