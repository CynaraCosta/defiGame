//
//  WheresTheNumberView.swift
//  gameMath
//
//  Created by Danielly Santos Lopes da Silva on 24/10/22.
//

import SwiftUI

struct WheresTheNumberView: View {
    
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
    
    
    var body: some View {
        ZStack {
            CadeONumeroBackgroundView()
            
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
            
//
//            LazyVGrid(columns: [
//                GridItem(.adaptive(minimum: 100))
//            ],
//                      spacing: 20) {
//                ForEach(activities[activityIndex].gameButton, id: \.id ) {
//                    gameButton in
//                    GameButtonView(
//                        textButton: gameButton.syllable,
//                        buttonColor: gameButton.buttonColor,
//                        textColor: gameButton.textColor,
//                        buttonActive: gameButton.isCorrect,
//                        changedListActivityIndex: self.changeListActivityIndex
//                    )
//                }
//            }
//
            
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
    
}
