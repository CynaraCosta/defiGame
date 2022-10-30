//
//  CountThereView.swift
//  gameMath
//
//  Created by Jpsmor on 28/10/22.
//

import SwiftUI

struct CountThereView: View {
    
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
    
    
    
    //ButtonConfigure
    var buttonWidth = 0.4
    var buttonHeight = 0.2
    var buttonBorderColor = Color("Blue1000")
    var buttonBGColor : Color = .white
    var buttonTextColor = Color("Blue1000")
    var buttonCornerRadius : CGFloat = 8
    var buttonBorderThickness : CGFloat = 2
    
    
    var lineColor : Color = .white
    var lineThickness : CGFloat = 2
    
    
    var body: some View {
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
                ProgressBar()
                Spacer()
                    .frame(height: 50)
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
                    .frame(height: 50)
                
                HStack {
                    Button (String(answer1)) {
                        receiveAnswer(givenAnswer: answer1)
                        refreshData()
                    }
                    .frame(width: UIScreen.main
                        .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                    .background(buttonBGColor)
                    .foregroundColor(buttonTextColor)
                    .cornerRadius(buttonCornerRadius)
                    .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(buttonBorderColor, lineWidth: buttonBorderThickness))
                    Spacer()
                    Rectangle()
                        .frame(width: lineThickness, height: UIScreen.main.bounds.height * buttonHeight)
                        .foregroundColor(lineColor)
                    Spacer()
                    Button (String(answer2)) {
                        receiveAnswer(givenAnswer: answer2)
                        refreshData()
                    }
                    .frame(width: UIScreen.main
                        .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                    .background(buttonBGColor)
                    .foregroundColor(buttonTextColor)
                    .cornerRadius(buttonCornerRadius)
                    .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(buttonBorderColor, lineWidth: buttonBorderThickness))

                }
                .frame(width: UIScreen.main.bounds.width * 0.85)
                
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
                HStack {
                    Button (String(answer3)) {
                        receiveAnswer(givenAnswer: answer3)
                        refreshData()
                    }
                    .frame(width: UIScreen.main
                        .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                    .background(buttonBGColor)
                    .foregroundColor(buttonTextColor)
                    .cornerRadius(buttonCornerRadius)
                    .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(buttonBorderColor, lineWidth: buttonBorderThickness))
                    Spacer()

                    Rectangle()
                        .frame(width: lineThickness, height: UIScreen.main.bounds.height * buttonHeight)
                        .foregroundColor(.white)
                    Spacer()
                    Button (String(answer4)) {
                        receiveAnswer(givenAnswer: answer4)
                        refreshData()
                    }
                    .frame(width: UIScreen.main
                        .bounds.width * buttonWidth, height: UIScreen.main.bounds.height * buttonHeight)
                    .background(buttonBGColor)
                    .foregroundColor(buttonTextColor)
                    .cornerRadius(buttonCornerRadius)
                    .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius).stroke(buttonBorderColor, lineWidth: buttonBorderThickness))

                }
                .frame(width: UIScreen.main.bounds.width * 0.85)
                Spacer()
            }
            .frame(width: .infinity, height: .infinity)
        }
    }
    
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
    
    func receiveAnswer (givenAnswer: Int) {
        if givenAnswer == rightAnswer {
            score += 1
        }
    }
}

struct CountThereView_Previews: PreviewProvider {
    static var previews: some View {
        CountThereView()
    }
}
