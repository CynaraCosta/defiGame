//
//  MaioraisView.swift
//  gameMath
//
//  Created by Cynara Costa on 18/10/22.
//

import SwiftUI

struct MaioraisVIew: View {
    
    @State var timerRunning = false
    @State var countDownTimer = 5
    @State private var initPopUp = true
    @State private var blurAmount: CGFloat = 40.0
    @State private var textGame: String = "Selecionar o maior número disposta na tela."
    
//    private var data: [Int] = Array(1...9)
//    private var data: [Int] = [34, 56, 2, 78, 45, 98, 66, 74, 90]
    @State private var data: [Int] = generateNumbers()
    
    private var answer: Int {
        get {
            return data.max()!
        }
    }
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    @State private var points = 0
    @State private var textPoints = ""
    
    var body: some View {
        
        if countDownTimer != 0 {
            ZStack {
                MaioraisBackgroundView()
                
                VStack (spacing: UIScreen.main.bounds.height * 0.1) {
                    
                    HStack (spacing: UIScreen.main.bounds.width * 0.4){
                        
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundColor(.white)
                            Text("\(points)")
                                .foregroundColor(.white)
                                .font(.system(size: 22, weight: .semibold))
                        }
                        
                        HStack {
                            Image(systemName: "clock")
                                .foregroundColor(.white)
                            TimeView(countDownTimer: $countDownTimer, timerRunning: $timerRunning)
                        }
                    }
                    
                    Text("Encontre o maior número! \(answer)")
                        .font(.system(size: 22, weight: .semibold))
                        .foregroundColor(.white)
                    
                    LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                        ForEach(data, id: \.self) { number in
                            Button {
                                if number == answer {
                                    points += 10
                                    HapticManager.instance.notification(type: .success)
                                    data = generateNumbers()
                                    
                                } else {
                                    data = generateNumbers()
                                    
                                }
                            } label: {
                                ZStack {
                                    Rectangle()
                                        .frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.height * 0.11)
                                        .cornerRadius(8)
                                        .foregroundColor(.white)
                                    Text("\(number)")
                                        .foregroundColor(Color("Blue1000"))
                                        .font(.system(size: 16, weight: .regular))
                                }
                            }
                            
                        }
                    }.padding()
                    
                }.blur(radius: blurAmount)
                
                InitPopUp(show: $initPopUp, blur: $blurAmount, timerRun: $timerRunning, textGame: $textGame)
                
            }
        } else {
            
            withAnimation {
                FinishSoloView(points: $points)
            }
            
        }

    }

}

func generateNumbers() -> [Int] {
    var set = Set<Int>()
    while set.count < 9 {
        set.insert(Int.random(in: 1...99))
    }
//    return (1..<10).map{_ in Int.random(in: 1 ... 99)}
    // [1, 45, 67, 34, 98, 6, 78, 65, 23]
    return Array(set)
}

struct MaioraisBackgroundView: View {
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("Purple800"), Color("Blue800")]),
                       startPoint: .bottomTrailing,
                       endPoint: .topLeading)
            .edgesIgnoringSafeArea(.all)
    }
}

struct MaioraisView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MaioraisVIew()
        }
    }
}
