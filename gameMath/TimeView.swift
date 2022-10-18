//
//  TimeView.swift
//  gameMath
//
//  Created by Cynara Costa on 18/10/22.
//

import SwiftUI

struct TimeView: View {
    @Binding var countDownTimer: Int
    @Binding var timerRunning: Bool
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        VStack {
            Text("\(countDownTimer)")
                .onReceive(timer) { _ in
                    if countDownTimer > 0 && timerRunning {
                        countDownTimer -= 1
                    } else {
                        timerRunning = false
                    }
                }
                .foregroundColor(.white)
                .font(.system(size: 22, weight: .semibold))
                .opacity(0.80)
        }
        
        
    }
}


//struct TimeView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            TimeView(countDownTimer: 5, timerRunning: false)
//        }
//    }
//}
