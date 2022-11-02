//
//  CountThereView.swift
//  gameMath
//
//  Created by Jpsmor on 28/10/22.
//

import SwiftUI

struct CountThereView: View {
    
    @State var timerRunning = false
    @State private var initPopUp = true
    @State private var blurAmount: CGFloat = 32.0
    @State private var textGame: String = "Ache o resultado da expressão."
    
    @State var score : Int = 0
    @State var operatorOne : Int = 50
    @State var operatorTwo : Int = 35
    @State var signal = "+"
    @State var rightAnswer : Int = 85
    @State var rightAnswerPosition : Int = 4
    
    @State var answer1 = 22
    @State var answer2 = 49
    @State var answer3 = 10
    @State var answer4 = 85
    
    @State var newRecord = false
    
    let timerTimer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    @State var time: Float = 40.0
    
    
    
    //ButtonConfigure
    var buttonWidth = 0.3
    var buttonHeight = 0.15
    var buttonBorderColor = Color("Blue1000")
    var buttonBGColor : Color = .white
    var buttonTextColor = Color("Blue1000")
    var buttonCornerRadius : CGFloat = 8
    var buttonBorderThickness : CGFloat = 2
    
    
    var lineColor : Color = .white
    var lineThickness : CGFloat = 2
    
    
    var body: some View {
        if time > 0 {
            ZStack {
                MaioraisBackgroundView()
                VStack {
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.white)
                        Text(String(score))
                            .foregroundColor(.white)
                    }
                    Spacer()
                        .frame(height: 30)
                    ProgressBar(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.03, percent: CGFloat(time), color: time > 20 ? .white : ((time > 5) ? .yellow : .red))
                        .animation(.spring())
                    Spacer()
                        .frame(height: UIScreen.main.bounds.height * 0.05)
                    HStack {
                        Text(String(operatorOne))
                            .foregroundColor(buttonTextColor)
                        Text(signal)
                            .foregroundColor(buttonTextColor)
                        Text(String(operatorTwo))
                            .foregroundColor(buttonTextColor)
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.105)
                    .background(buttonBGColor)
                    .cornerRadius(8)
                    .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius)
                        .stroke(buttonBorderColor, lineWidth: buttonBorderThickness))
                    Spacer()
                        .frame(height: UIScreen.main.bounds.height * 0.1)
                    
                    HStack {
                        Button(action: {
                                receiveAnswer(givenAnswer: answer1)
                                refreshData()
                        }, label: {
                            Text(String(answer1))
                                .frame(width: UIScreen.main
                                    .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                                .background(buttonBGColor)
                                .foregroundColor(buttonTextColor)
                                .cornerRadius(buttonCornerRadius)
                                .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(buttonBorderColor, lineWidth: buttonBorderThickness))
                        })
                        Spacer()
                        Rectangle()
                            .frame(width: lineThickness, height: UIScreen.main.bounds.height * buttonHeight)
                            .foregroundColor(lineColor)
                        Spacer()
                        Button(action: {
                                receiveAnswer(givenAnswer: answer2)
                                refreshData()
                        }, label: {
                            Text(String(answer2))
                                .frame(width: UIScreen.main
                                    .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                                .background(buttonBGColor)
                                .foregroundColor(buttonTextColor)
                                .cornerRadius(buttonCornerRadius)
                                .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(buttonBorderColor, lineWidth: buttonBorderThickness))
                        })

                    }
                    .frame(width: UIScreen.main.bounds.width * 0.85)
                    VStack {
                        Spacer()
                            .frame(height: UIScreen.main.bounds.height * 0.05)
                        HStack {
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width * buttonWidth, height: lineThickness)
                                .foregroundColor(lineColor)
                            Spacer()
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width * buttonWidth, height: lineThickness)
                                .foregroundColor(lineColor)
                        }
                        .frame(width: UIScreen.main.bounds.width * 0.85)
                        Spacer()
                            .frame(height: UIScreen.main.bounds.height * 0.05)
                    }
                    HStack {
                        Button(action: {
                                receiveAnswer(givenAnswer: answer3)
                                refreshData()
                        }, label: {
                            Text(String(answer3))
                                .frame(width: UIScreen.main
                                    .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                                .background(buttonBGColor)
                                .foregroundColor(buttonTextColor)
                                .cornerRadius(buttonCornerRadius)
                                .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(buttonBorderColor, lineWidth: buttonBorderThickness))
                        })
                        Spacer()

                        Rectangle()
                            .frame(width: lineThickness, height: UIScreen.main.bounds.height * buttonHeight)
                            .foregroundColor(.white)
                        Spacer()
                        Button(action: {
                                receiveAnswer(givenAnswer: answer4)
                                refreshData()
                        }, label: {
                            Text(String(answer4))
                                .frame(width: UIScreen.main
                                    .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                                .background(buttonBGColor)
                                .foregroundColor(buttonTextColor)
                                .cornerRadius(buttonCornerRadius)
                                .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(buttonBorderColor, lineWidth: buttonBorderThickness))
                        })

                    }
                    .frame(width: UIScreen.main.bounds.width * 0.85)
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .blur(radius: blurAmount)
                InitPopUp(show: $initPopUp, blur: $blurAmount, timerRun: $timerRunning, textGame: $textGame)
            }
            .onReceive(timerTimer) { _ in
                if time > 0 && timerRunning {
                    time -= 0.1
                    
                } else {
                    timerRunning = false
                    
                }
            }
            .onAppear() {
                refreshData()
            }
        } else {
            withAnimation {
                FinishSoloCountThereView(points: $score, newRecord: $newRecord)
            }
        }
        
    }
    
    func refreshData() {
        let signalNumber = Int.random(in: 1...4)
        var minRange = 1
        var maxRange = 2
        
        switch signalNumber {
            
        case 1:
            signal = "+"
            operatorOne = Int.random(in: 1...50)
            operatorTwo = Int.random(in: 1...50)
            rightAnswer = operatorOne + operatorTwo
            rightAnswerPosition = Int.random(in: 1...4)
            minRange = 2
            maxRange = 100
        case 2:
            
            signal = "-"
            operatorOne = Int.random(in: 2...100)
            operatorTwo = Int.random(in: 1...operatorOne - 1)
            rightAnswer = operatorOne - operatorTwo
            rightAnswerPosition = Int.random(in: 1...4)
            minRange = 1
            maxRange = 99
            
        case 3:
            
            signal = "x"
            operatorOne = Int.random(in: 1...10)
            operatorTwo = Int.random(in: 1...10)
            rightAnswer = operatorOne * operatorTwo
            rightAnswerPosition = Int.random(in: 1...4)
            minRange = 1
            maxRange = 100
            
        case 4:
            
            signal = "÷"
            operatorTwo = Int.random(in: 1...10)
            rightAnswer = Int.random(in: 2...10)
            operatorOne = rightAnswer * operatorTwo
            rightAnswerPosition = Int.random(in: 1...4)
            minRange = 2
            maxRange = 10
            
        default:
            print("Deu ruim")
        }
        
        rightAnswerPosition = Int.random(in: 1...4)
        
        switch rightAnswerPosition {
            
        case 1 :
            answer1 = rightAnswer
            answer2 = Int.random(in: minRange...maxRange)
            while answer2 == answer1 {
                answer2 = Int.random(in: minRange...maxRange)
            }
            answer3 = Int.random(in: minRange...maxRange)
            while answer3 == answer1 || answer3 == answer2 {
                answer3 = Int.random(in: minRange...maxRange)
            }
            answer4 = Int.random(in: minRange...maxRange)
            while answer4 == answer1 || answer4 == answer2 || answer4 == answer3 {
                answer4 = Int.random(in: minRange...maxRange)
            }
            
        case 2:
            answer2 = rightAnswer
            answer1 = Int.random(in: minRange...maxRange)
            while answer1 == answer2 {
                answer1 = Int.random(in: minRange...maxRange)
            }
            answer3 = Int.random(in: minRange...maxRange)
            while answer3 == answer1 || answer3 == answer2 {
                answer3 = Int.random(in: minRange...maxRange)
            }
            answer4 = Int.random(in: minRange...maxRange)
            while answer4 == answer1 || answer4 == answer2 || answer4 == answer3 {
                answer4 = Int.random(in: minRange...maxRange)
            }
            
        case 3:
            answer3 = rightAnswer
            answer1 = Int.random(in: minRange...maxRange)
            while answer1 == answer3 {
                answer1 = Int.random(in: minRange...maxRange)
            }
            answer2 = Int.random(in: minRange...maxRange)
            while answer2 == answer1 || answer2 == answer3 {
                answer2 = Int.random(in: minRange...maxRange)
            }
            answer4 = Int.random(in: minRange...maxRange)
            while answer4 == answer1 || answer4 == answer2 || answer4 == answer3 {
                answer4 = Int.random(in: minRange...maxRange)
            }
            
        case 4:
            answer4 = rightAnswer
            answer1 = Int.random(in: minRange...maxRange)
            while answer1 == answer4 {
                answer1 = Int.random(in: minRange...maxRange)
            }
            answer2 = Int.random(in: minRange...maxRange)
            while answer2 == answer4 || answer2 == answer1 {
                answer2 = Int.random(in: minRange...maxRange)
            }
            answer3 = Int.random(in: minRange...maxRange)
            while answer3 == answer1 || answer3 == answer2 || answer3 == answer4 {
                answer3 = Int.random(in: minRange...maxRange)
            }
            
            
        default:
            print("Deu ruim")
        }
    }
    
    func receiveAnswer (givenAnswer: Int) {
        if givenAnswer == rightAnswer {
            score += 1
            playSound(sound: "hit")
            HapticManager.instance.impact(style: .light)
        } else {
            if score > 0 {
                score -= 1
            }
            playSound(sound: "error")
            HapticManager.instance.impact(style: .light)
        }
        if score > UserDefaults.standard.integer(forKey: "record_countThere_solo") {
            newRecord = true
        } else {
            newRecord = false
        }
    }
}

struct CountThereView_Previews: PreviewProvider {
    static var previews: some View {
        CountThereView()
    }
}
