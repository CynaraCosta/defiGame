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
    
    init(textButton: String, toGuess: Bool){
        self.textButton = textButton
        self.buttonColor = toGuess ? Color("GrayFullWhite") : Color("GrayFullWhite")
        self.textColor = toGuess ? Color("Ocean") : Color("Ocean")
    }
    
    
    
    var body: some View {
        VStack {
            Button(action: {
                
            }, label: {Text(self.textButton.uppercased())
                    .padding(0)
                    .font(.system(size: 20, weight: .medium))
                    .frame(width: 300, height: 50, alignment: .center)
                    .background(self.buttonColor)
                    .foregroundColor(textColor)
                    .clipShape(RoundedRectangle(cornerRadius: 4))
                    .multilineTextAlignment(.center)
                
            }).buttonStyle(PlainButtonStyle())
        }
    }
    
    
    
    struct NumberCorrectView_Previews: PreviewProvider {
        static var previews: some View {
            NumberCorrectView(textButton: "Doze", toGuess: false)
        }
    }
}
