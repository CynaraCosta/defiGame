//
//  WheresTheNumberView.swift
//  gameMath
//
//  Created by Danielly Santos Lopes da Silva on 24/10/22.
//

import SwiftUI

struct WheresTheNumberView: View {
    
    @State private var blurAmount: CGFloat = 32.0
    @State var timerRunning = false
    @State private var initPopUp = true
    @State private var textGame: String = "Selecione o número que está escrito na tela."
    @State private var points = 0
    
    var initPoints = 0
    
    @Environment(\.presentationMode) var presentationMode
    
    let activities: [ActivityItemModel]
    @State var activityIndex: Int = 0
    
    init(activities: [ActivityItemModel]) {
        self.activities = activities
    }
    
    func changeListActivityIndex() -> Void {
        if (
            (self.activityIndex + 1) <= (self.activities.count - 1)) {
            self.activityIndex += 1
        } else {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
    
    
    let timerTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var time: Int = 40
    
    
    
    var body: some View {
        
        if time != 0 {
            ZStack {
                CadeONumeroBackgroundView()
                
                VStack (spacing: 40) {
                    
           
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.white)
                        Circle()
                        //                                .foregroundColor(.white)
                        //                                .font(.system(size: 40, weight: .semibold))
                            .fill(.clear)
                            .frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.height * 0.2, alignment: .center)
                        
                            .modifier(AnimatingNumberOverlay(number: CGFloat(points)))
                    }
                    
                    
                    
                    ProgressBar(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.03, percent: CGFloat(time), color: time > 20 ? .white : ((time > 5) ? .yellow : .red))
                        .animation(.spring())
                        .offset(x: 0, y: -48)
                    
                    
                    
                    LazyVGrid(columns: [
                        GridItem(.adaptive(minimum: 9000))
                    ],
                              spacing: 0) {
                        ForEach(activities[activityIndex].numberCorrect, id: \.id ) {
                            numberCorrect in
                            NumberCorrectView(
                                textButton: numberCorrect.syllable ,
                                toGuess: numberCorrect.toGuess)
                        }
                    }
                    
                    
                    LazyVGrid(columns: [
                        GridItem(.adaptive(minimum: 100))
                    ],
                              spacing: 20) {
                        ForEach(activities[activityIndex].gameButton, id: \.id ) {
                            gameButton in
                            GameButtonView(
                                textButton: gameButton.syllable,
                                buttonColor: gameButton.buttonColor,
                                textColor: gameButton.textColor,
                                sound: gameButton.sound,
                                buttonActive: gameButton.isCorrect,
                                onTap: {
                                    withAnimation {
                                        points += 10
                                    }
                                    
                                },
                                changedListActivityIndex: self.changeListActivityIndex
                            )
                        }
                    }
                    
                }.blur(radius: blurAmount)
                
                InitPopUp(show: $initPopUp, blur: $blurAmount, timerRun: $timerRunning, textGame: $textGame)
                
            }
            
            .onReceive(timerTimer) { _ in
                if time > 0 && timerRunning {
                    time -= 1
                } else {
                    timerRunning = false
                }
            }
            
            
        } else {
            
            withAnimation {
                FinishSoloView(points: $points)
                
            }
            
        }
        
    }
    
    
    
}


struct CadeONumeroBackgroundView: View {
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("Purple800"), Color("Blue800")]),
                       startPoint: .bottomTrailing,
                       endPoint: .topLeading)
        .edgesIgnoringSafeArea(.all)
    }
}



struct WheresTheNumberView_Previews: PreviewProvider {
    static var previews: some View {
        WheresTheNumberView(activities: SectionItemModel.initGameSolo().activities)
    }
}

