//
//  MaioraisView.swift
//  gameMath
//
//  Created by Cynara Costa on 18/10/22.
//

import SwiftUI

struct MaioraisVIew: View {
    
    @State var timerRunning = true
    @State var countDownTimer = 40
    
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
    
    var body: some View {
        
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
                
            }
            
        }
        
    }
    
    
    
    
    
}

func generateNumbers() -> [Int] {
    return (1..<10).map{_ in Int.random(in: 1 ... 99)}
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
