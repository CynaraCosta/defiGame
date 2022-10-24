//
//  MaioraisView.swift
//  gameMath
//
//  Created by Cynara Costa on 18/10/22.
//

import SwiftUI

struct MaioraisVIew: View {
    
    @State var timerRunning = false
    @State private var initPopUp = true
    @State private var blurAmount: CGFloat = 32.0
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
    @State var buttonClicked = false
    
    let timerTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var time: Int = 40
    
    var body: some View {
        
        if time != 0 {
            ZStack {
                MaioraisBackgroundView()
                
                VStack (spacing: UIScreen.main.bounds.height * 0.04) {
                    
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
                    
                    Text("Encontre o maior número!")
                        .font(.system(size: 22, weight: .semibold))
                        .foregroundColor(.white)
                    
                    LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                        ForEach(data, id: \.self) { number in
                            Button (action: {
                                if number == answer {
                                    withAnimation {
                                        points += 10
                                    }
                                    playSound(sound: "yeah")
                                    HapticManager.instance.impact(style: .light)
                                    
                                } else {
                                    HapticManager.instance.notification(type: .error)
                                    playSound(sound: "windows")
                                }
                                
                                
                                buttonClicked = true
                                data = generateNumbers()
                                buttonClicked = false
                                
                            }, label: {
                                ZStack {
                                    Rectangle()
                                        .frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.height * 0.11)
                                        .cornerRadius(8)
                                        .foregroundColor(.white)
//                                        .background(
//                                            RoundedRectangle(cornerRadius: 5)
//                                                .offset(x: 0, y: 4)
//                                                .fill(buttonClicked ? .blue : .red)
//                                        )
                                                        
                                    Text("\(number)")
                                        .foregroundColor(Color("Blue1000"))
                                        .font(.system(size: 18, weight: .regular))
                                }
                            })
                            
                        }
                    }.padding()
                    
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

func generateNumbers() -> [Int] {
    var set = Set<Int>()
    while set.count < 9 {
        set.insert(Int.random(in: 1...99))
    }
//    return (1..<10).map{_ in Int.random(in: 1 ... 99)}
    // [1, 45, 67, 34, 98, 6, 78, 65, 23]

    return Array(set)
}

struct AnimatingNumberOverlay: AnimatableModifier {
    
    var number: CGFloat
    var animatableData: CGFloat {
        get {
            number
        }
        
        set {
            number = newValue
        }
        
    }
    
    func body(content: Content) -> some View {
        return content.overlay(Text("\(Int(number))").foregroundColor(.white)
            .font(.system(size: 40, weight: .semibold)))
    }
    
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
