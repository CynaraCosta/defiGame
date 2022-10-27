//
//  GameButtonView.swift
//  gameMath
//
//  Created by Danielly Santos Lopes da Silva on 20/10/22.
//

import SwiftUI

struct GameButtonView: View {
    var textButton: String
    let buttonColor: Color
    let textColor: Color
    let buttonActive: Bool
    let changeListActivityIndex: () -> Void
    
    
    init(textButton: String,
         buttonColor: Color,
         textColor: Color,
         buttonActive: Bool = false,
         changedListActivityIndex: @escaping () -> Void
    ){
        self.textButton = textButton
        self.buttonColor = buttonColor
        self.textColor = textColor
        self.buttonActive = buttonActive
        self.changeListActivityIndex = changedListActivityIndex
    }
    
    
    var body: some View {
        VStack {
            Button(action: {
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    if buttonActive {
                        self.changeListActivityIndex();
                    }
                }
                
            }, label: {Text(self.textButton.uppercased())
                    .padding(0)
                    .font(.system(size: 20, weight: .regular))
                    .frame(width: UIScreen.main.bounds.width * 0.25,
                           height: UIScreen.main.bounds.height * 0.11)
//                    .frame(width: 78, height: 63 , alignment: .center)
                    .background(self.buttonColor)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                   
                    .multilineTextAlignment(.center)
                
            }).buttonStyle(PlainButtonStyle())
        }
    }
    
}

struct GameButtonView_Previews: PreviewProvider {
    static var previews: some View {
        GameButtonView(
            textButton: "12",
            buttonColor: Color("GrayFullWhite"),
            textColor: Color("Blue1000"),
            changedListActivityIndex: { print("mudou index")
            })
    }
}
