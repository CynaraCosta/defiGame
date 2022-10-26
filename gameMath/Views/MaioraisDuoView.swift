//
//  MaioraisDuoView.swift
//  gameMath
//
//  Created by Cynara Costa on 24/10/22.
//

import SwiftUI

struct MaioraisDuoView: View {
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 136))
    ]
    
    @State private var points = 0
    @State private var points2 = 0
    
    @State private var initPopUp = true
    @State private var blurAmount: CGFloat = 32.0
    @State private var blurAmountFinal: CGFloat = 0.0
    
    @State var timerRunning = true
    @State private var data: [Int] = generateNumbersDuo()
    @State private var data2: [Int] = generateNumbersDuo()
    
    @State private var duoPopUp = false
    @State private var win: Bool = false
    @State private var win2: Bool = false
    
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
                                            HapticManager.instance.impact(style: .light)
                                        } else {
                                            HapticManager.instance.notification(type: .error)
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
                            
                        }.blur(radius: blurAmountFinal)
                        
                        
                            FinishDuoPopUp(show: $duoPopUp, blur: $blurAmountFinal, points: $points, win: $win)
                        
                        
                        
                    }.frame(width: UIScreen.main.bounds.width)
                    
                    
                }.rotationEffect(.radians(.pi))
                    .edgesIgnoringSafeArea(.all)
                    .ignoresSafeArea(edges: .all)
                    
                
                
                VStack (alignment: .center) {
                    
                    ZStack {
                        Rectangle()
                            .fill(.white)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        
                        
                        VStack (alignment: .center){
                            
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
                                            HapticManager.instance.impact(style: .light)
                                        } else {
                                            HapticManager.instance.notification(type: .error)
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
                            
                        }.blur(radius: blurAmountFinal)
                        
                        FinishDuoPopUp(show: $duoPopUp, blur: $blurAmountFinal, points: $points2, win: $win2)
                        
                    }
                    
                    
                    
                }
                
            }.padding().background(Color.white)
                .edgesIgnoringSafeArea(.all)
                .blur(radius: blurAmount)
            
            
            ProgressBar(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.03, percent: CGFloat(time), color: time > 20 ? .white : ((time > 5) ? .yellow : .red))
                .animation(.spring())
            
            InitPopUp(show: $initPopUp, blur: $blurAmount, timerRun: $timerRunning, textGame: $textGame)
            
            
        }
        .onReceive(timerTimer) { _ in
            if time > 0 && timerRunning {
                time -= 1
            } else {
                timerRunning = false
                duoPopUp = true
                blurAmountFinal = 32.0
                
                if points > points2 {
                    win = true
                } else if points2 > points{
                    win2 = true
                } else {
                    win = true
                    win2 = true
                }
                
            }
        }
        .edgesIgnoringSafeArea(.all)
        
        
        
        
        
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
