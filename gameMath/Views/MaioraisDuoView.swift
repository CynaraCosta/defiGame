//
//  MaioraisDuoView.swift
//  gameMath
//
//  Created by Cynara Costa on 24/10/22.
//

import SwiftUI

struct MaioraisDuoView: View {
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 120))
    ]
    
    @State private var points = 0
    @State private var points2 = 0
    
    @State private var initPopUp = true
    @State private var blurAmount: CGFloat = 32.0
    
    @State var timerRunning = true
    @State private var data: [Int] = generateNumbersDuo()
    @State private var data2: [Int] = generateNumbersDuo()
    
    
    
    @State private var textGame: String = "Selecionar o maior número disposta na tela."
    
    
    private var answer: Int {
        get {
            return data.max()!
        }
    }
    
    private var answer2: Int {
        get {
            return data2.max()!
        }
    }
    
    let timerTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var time: Int = 40
    
    var body: some View {
        
        if time != 0 {
            ZStack (alignment: .center) {
                
                VStack(alignment: .center, spacing: 0) {
                    
                    
                    VStack {
                        
                        ZStack {
                            Rectangle()
                                .fill(Color("Blue800"))
                                .frame(minWidth: 0, maxWidth: .infinity)

                            
                            VStack {
                                
                                VStack (spacing: 16){
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.white)
                                    Text("\(points)")
                                        .foregroundColor(.white)
                                        .font(.system(size: 24, weight: .bold))
                                }
                                
                                
                                LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                                    ForEach(data, id: \.self) { number in
                                        Button (action: {
                                            
                                            if number == answer {
                                                points += 10
                                            }
                                            
                                            data = generateNumbersDuo()
                                            
                                        }, label: {
                                            ZStack {
                                                Rectangle()
                                                    .frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.height * 0.11)
                                                    .cornerRadius(8)
                                                    .foregroundColor(.white)
                                                
                                                Text("\(number)")
                                                    .foregroundColor(Color("Blue1000"))
                                                    .font(.system(size: 18, weight: .regular))
                                            }
                                        })
                                        
                                    }
                                }.padding()
                                
                            }
                            
                            
                        }
                        
                        
                    }.rotationEffect(.radians(.pi))
                        .edgesIgnoringSafeArea(.all)
                        .ignoresSafeArea(edges: .all)
                        
                    
                    VStack {
                        Rectangle()
                            .fill(.white)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        
                        VStack {
                            
                            VStack (spacing: 16) {
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color("Blue800"))
                                Text("\(points2)")
                                    .foregroundColor(Color("Blue800"))
                                    .font(.system(size: 24, weight: .bold))
                            }
                    
                            
                            LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                                ForEach(data2, id: \.self) { number in
                                    Button (action: {
                                        
                                        if number == answer2 {
                                            points2 += 10
                                        }
                                        
                                        data2 = generateNumbersDuo()
                                        
                                    }, label: {
                                        ZStack {
                                            Rectangle()
                                                .frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.height * 0.11)
                                                .cornerRadius(8)
                                                .foregroundColor(Color("Blue800"))
                                            
                                            Text("\(number)")
                                                .foregroundColor(.white)
                                                .font(.system(size: 18, weight: .regular))
                                        }
                                    })
                                    
                                }
                            }.padding()
                            
                        }
                        
                    }

                }.padding().background(Color.white)
                    .edgesIgnoringSafeArea(.all)
                    .blur(radius: blurAmount)
                
                ProgressBar(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.03, percent: CGFloat(time), color: time > 20 ? .green : ((time > 5) ? .yellow : .red))
                    .animation(.spring())
                    
                InitPopUp(show: $initPopUp, blur: $blurAmount, timerRun: $timerRunning, textGame: $textGame)
                
                
            }
            .onReceive(timerTimer) { _ in
                if time > 0 && timerRunning {
                    time -= 1
                } else {
                    timerRunning = false
                }
            }
            .edgesIgnoringSafeArea(.all)
        } else {
            FinishDuoView(points: $points, points2: $points2)
        }
        
        
        
        
    }
        
}

func generateNumbersDuo() -> [Int] {
    var set = Set<Int>()
    while set.count < 4 {
        set.insert(Int.random(in: 1...99))
    }
//    return (1..<10).map{_ in Int.random(in: 1 ... 99)}
    // [1, 45, 67, 34, 98, 6, 78, 65, 23]

    return Array(set)
}

struct MaioraisDuoView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MaioraisDuoView()
        }
    }
}
