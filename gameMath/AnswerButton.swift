//
//  AnswerButton.swift
//  gameMath
//
//  Created by Danielly Santos Lopes da Silva on 18/10/22.
//

import SwiftUI

struct AnswerButton: View {
    
    var number : Int
    
    var body: some View {
        Text("\(number)")
            .frame(width: 78, height: 63)
            .border(Color("Blue100"), width: 3)
            .font(.system(size: 17, weight: .regular))
            .foregroundColor(Color("Blue100"))
            .background(Color("GrayFullWhite"))
            .cornerRadius(8)
        
            
           
    }
}

struct AnswerButton_Previews: PreviewProvider {
    static var previews: some View {
        AnswerButton(number: 100)
    }
}
