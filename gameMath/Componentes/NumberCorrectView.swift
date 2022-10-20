//
//  NumberCorrectView.swift
//  gameMath
//
//  Created by Danielly Santos Lopes da Silva on 20/10/22.
//

import SwiftUI

struct NumberCorrectView: View {
    let textButton: String;
    let toGuess: Bool = false;
    let buttonColor: Color;
    let textColor: Color;
    
    init(textButton: String, buttonColor: Color, textColor: Color) {
        self.textButton = textButton
        self.buttonColor = buttonColor
        self.textColor = textColor
    }
    
    
    
    var body: some View {
        VStack {
            Button(action: {
                
            }, label: {Text(self.textButton.uppercased()).bold()
                    .padding(0)
                    .font(.system(size: 20, weight: .bold))
                    .frame(width: 267, height: 40 , alignment: .center)
                    .background(self.buttonColor)
                    .clipShape(RoundedRectangle(cornerRadius: 4))
                    .multilineTextAlignment(.center)
                
            }).buttonStyle(PlainButtonStyle())
        }
    }
    
    
    
    struct NumberCorrectView_Previews: PreviewProvider {
        static var previews: some View {
            NumberCorrectView(textButton: "Doze", buttonColor: .cyan, textColor: .black)
        }
    }
}
