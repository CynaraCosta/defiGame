//
//  WheresTheNumberView.swift
//  gameMath
//
//  Created by Danielly Santos Lopes da Silva on 18/10/22.
//

import SwiftUI

struct WheresTheNumberView: View {
    @State private var correctAnswer = 0
    @State private var choiceArray : [Int] = [0, 1, 2, 3]
    @State private var firstNumber = 0
    @State private var secondNumber = 0
    @State private var difficulty = 100
    @State private var score = 0 
    
    
    
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct WheresTheNumberView_Previews: PreviewProvider {
    static var previews: some View {
        WheresTheNumberView()
    }
}
