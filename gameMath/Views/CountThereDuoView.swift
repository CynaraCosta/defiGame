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
    @State private var blurAmountFinal: CGFloat = 0.0
    @State var confetti: Bool = false
    @State var finishConfetti: Bool = false
    
    @State var confetti2: Bool = false
    @State var finishConfetti2: Bool = false
    @State private var duoPopUp = false
    @State private var win1 : Bool = false
    @State private var win2 : Bool = false
    @State private var textGame: String = "Ache o resultado da expressão.\n\nQuanto mais rápido você acertar mais pontos ganhará.\n\nCuidado! Se responder errado perderá pontos!\n\nQuem pontuar 100 pontos primeiro ganha a partida!"
    
    @State var score1 : Int = 0
    @State var score2 : Int = 0
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
    @State var time: Float = 10.5
    
    
    
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
                ZStack {
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
                                ProgressBarDuo (width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height * 0.02, percent: CGFloat(time), color: time > 5 ? .white : ((time > 2) ? .yellow : .red))
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
                            Button(action: {
                                receiveAnswer(givenAnswer: answer1, player: 1)
                                refreshData()
                            }, label: {
                                Text(String(answer1))
                                    .frame(width: UIScreen.main
                                        .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                                    .background(topButtonBGColor)
                                    .foregroundColor(topButtonTextColor)
                                    .cornerRadius(buttonCornerRadius)
                                    .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(topButtonBorderColor, lineWidth: buttonBorderThickness))
                            })
                            Spacer()
                            Button(action: {
                                receiveAnswer(givenAnswer: answer2, player: 1)
                                refreshData()
                            }, label: {
                                Text(String(answer2))
                                    .frame(width: UIScreen.main
                                        .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                                    .background(topButtonBGColor)
                                    .foregroundColor(topButtonTextColor)
                                    .cornerRadius(buttonCornerRadius)
                                    .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(topButtonBorderColor, lineWidth: buttonBorderThickness))
                            })
                        }
                                .frame(width: UIScreen.main.bounds.width * 0.6)
                                Spacer()
                        HStack {
                            Button(action: {
                                receiveAnswer(givenAnswer: answer3, player: 1)
                                refreshData()
                            }, label: {
                                Text(String(answer3))
                                    .frame(width: UIScreen.main
                                        .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                                    .background(topButtonBGColor)
                                    .foregroundColor(topButtonTextColor)
                                    .cornerRadius(buttonCornerRadius)
                                    .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(topButtonBorderColor, lineWidth: buttonBorderThickness))
                            })
                            Spacer()
                            Button(action: {
                                receiveAnswer(givenAnswer: answer4, player: 1)
                                refreshData()
                            }, label: {
                                Text(String(answer4))
                                    .frame(width: UIScreen.main
                                        .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                                    .background(topButtonBGColor)
                                    .foregroundColor(topButtonTextColor)
                                    .cornerRadius(buttonCornerRadius)
                                    .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(topButtonBorderColor, lineWidth: buttonBorderThickness))
                            })
                        }
                                .frame(width: UIScreen.main.bounds.width * 0.6)
                                Spacer()
                            
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    .blur(radius: blurAmountFinal)
                    if win1 || win2 {
                        FinishDuoCountThereView(show: $duoPopUp, blur: $blurAmountFinal,  win: $win1)
                    }
                    
                    EmitterView()
                        .scaleEffect(confetti ? 1 : 0, anchor: .top)
                        .opacity(confetti && !finishConfetti ? 1 : 0)
                        .ignoresSafeArea()
                }
                .rotationEffect(.degrees(180))
                .background(Color("Blue800"))
                ZStack {
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
                            ProgressBarDuo (width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height * 0.02, percent: CGFloat(time), color: time > 5 ? Color("Blue800") : ((time > 2) ? .yellow : .red))
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
                            Button(action: {
                                receiveAnswer(givenAnswer: answer1, player: 2)
                                refreshData()
                            }, label:{ Text(String(answer1))
                                    .frame(width: UIScreen.main
                                        .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                                    .background(botButtonBGColor)
                                    .foregroundColor(botButtonTextColor)
                                    .cornerRadius(buttonCornerRadius)
                                    .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(botButtonBorderColor, lineWidth: buttonBorderThickness))
                            })
                            Spacer()
                            Button(action: {
                                receiveAnswer(givenAnswer: answer2, player: 2)
                                refreshData()
                            }, label:{ Text(String(answer2))
                                    .frame(width: UIScreen.main
                                        .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                                    .background(botButtonBGColor)
                                    .foregroundColor(botButtonTextColor)
                                    .cornerRadius(buttonCornerRadius)
                                    .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(botButtonBorderColor, lineWidth: buttonBorderThickness))
                            })
                        }
                        .frame(width: UIScreen.main.bounds.width * 0.6)
                        Spacer()
                        HStack {
                            Button(action: {
                                receiveAnswer(givenAnswer: answer3, player: 2)
                                refreshData()
                            }, label:{ Text(String(answer3))
                                    .frame(width: UIScreen.main
                                        .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                                    .background(botButtonBGColor)
                                    .foregroundColor(botButtonTextColor)
                                    .cornerRadius(buttonCornerRadius)
                                    .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(botButtonBorderColor, lineWidth: buttonBorderThickness))
                            })
                            Spacer()
                            Button(action: {
                                receiveAnswer(givenAnswer: answer4, player: 2)
                                refreshData()
                            }, label:{ Text(String(answer4))
                                    .frame(width: UIScreen.main
                                        .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                                    .background(botButtonBGColor)
                                    .foregroundColor(botButtonTextColor)
                                    .cornerRadius(buttonCornerRadius)
                                    .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(botButtonBorderColor, lineWidth: buttonBorderThickness))
                            })
                        }
                        .frame(width: UIScreen.main.bounds.width * 0.6)
                            .frame(width: UIScreen.main.bounds.width * 0.6)
                            Spacer()
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    .blur(radius: blurAmountFinal)
                    if win1 || win2 {
                        FinishDuoCountThereView(show: $duoPopUp, blur: $blurAmountFinal,  win: $win2)
                    }
                    
                    EmitterView()
                        .scaleEffect(confetti2 ? 1 : 0, anchor: .top)
                        .opacity(confetti2 && !finishConfetti2 ? 1 : 0)
                        .ignoresSafeArea()
                }
                .background(Color("GrayFullWhite"))
            }
            .onAppear() {
                refreshData()
            }.blur(radius: blurAmount)
            
            
            InitPopUp(show: $initPopUp, blur: $blurAmount, timerRun: $timerRunning, textGame: $textGame)
        }
        .onReceive(timerTimer) { _ in
            if time > 0 && timerRunning {
                time -= 0.1
                
            } else if time <= 0 {
                refreshData()
                playSound(sound: "error")
                HapticManager.instance.impact(style: .light)

                
            }
        }
    }
    
    
    //Functions
    
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
                answer3 = Int.random(in: minRange...maxRange)
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
        
        time = 10.5
    }
    
    func receiveAnswer (givenAnswer: Int, player: Int) {
        switch player {
        case 1:
            if givenAnswer == rightAnswer {
                if score1 + Int(time) >= 100 {
                    score1 = 100
                    duoPopUp = true
                    blurAmountFinal = 32.0
                    win1 = true
                    timerRunning = false
                    doConfetti()
                } else {
                    score1 += Int(time)
                }
                playSound(sound: "hit")
                HapticManager.instance.impact(style: .light)
            }
            else {
                if score1 - Int(time) <= 0 {
                    score1 = 0
                } else {
                    score1 -= Int(time)
                }
                playSound(sound: "error")
                HapticManager.instance.impact(style: .light)
            }
        case 2:
            if givenAnswer == rightAnswer {
                if score2 + Int(time) >= 100 {
                    score2 = 100
                    duoPopUp = true
                    blurAmountFinal = 32.0
                    win2 = true
                    timerRunning = false
                    doConfetti()
                } else {
                    score2 += Int(time)
                }
                playSound(sound: "hit")
                HapticManager.instance.impact(style: .light)
            }
            else {
                
                if score2 - Int(time) <= 0 {
                    score2 = 0
                } else {
                    score2 -= Int(time)
                }
                playSound(sound: "error")
                HapticManager.instance.impact(style: .light)
            }
        default:
            print("Deu ruim")
        }
    }
    
    func doConfetti(){
        if win1 {
            withAnimation(.spring()) {
                confetti = true
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation(.easeInOut(duration: 1.5)){
                    finishConfetti = true
                }
            }
        } else {
            withAnimation(.spring()) {
                confetti2 = true
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation(.easeInOut(duration: 1.5)){
                    finishConfetti2 = true
                }
            }
        }
        
    }
}


struct CountThereDuoView_Previews: PreviewProvider {
    static var previews: some View {
        CountThereDuoView()
            .previewDevice("iPhone 12")
    }
}
