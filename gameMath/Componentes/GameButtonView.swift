//
//  GameButtonView.swift
//  gameMath
//
//  Created by Danielly Santos Lopes da Silva on 20/10/22.
//

import SwiftUI

struct GameButtonView: View {
    let textButton: String
    //let buttonActive: Bool
    let buttonColor: Color
    let textColor: Color
    
    
    init(textButton: String,
         buttonColor: Color,
         textColor: Color) {
        self.textButton = textButton
        self.buttonColor = buttonColor
        self.textColor = textColor
       // self.buttonActive;: Bool = false,
    }
    
    
    var body: some View {
        VStack {
            Button(action: {
                
            }, label: {Text(self.textButton.uppercased()).bold()
                    .padding(0)
                    .font(.system(size: 20, weight: .bold))
                    .frame(width: 78, height: 63 , alignment: .center)
                    .background(self.buttonColor)
                    .clipShape(RoundedRectangle(cornerRadius: 4))
                    .multilineTextAlignment(.center)
                
            }).buttonStyle(PlainButtonStyle())
        }
    }
    
    }

struct GameButtonView_Previews: PreviewProvider {
    static var previews: some View {
        GameButtonView(textButton: "12", buttonColor: .cyan, textColor: .black)
    }
}
