//
//  GameButtonView.swift
//  gameMath
//
//  Created by Danielly Santos Lopes da Silva on 20/10/22.
//

import SwiftUI

struct GameButtonView: View {
    
    
    @State var buttonClicked = false
    
    let sound: SoundOption
    var textButton: String
    let buttonColor: Color
    let textColor: Color
    let buttonActive: Bool
    let onTap: () -> Void
    let changeListActivityIndex: () -> Void
    
    
    init(textButton: String,
         buttonColor: Color,
         textColor: Color,
         sound: SoundOption,
         buttonActive: Bool = false,
         onTap: @escaping () -> Void,
         changedListActivityIndex: @escaping () -> Void
    ){
        self.textButton = textButton
        self.buttonColor = buttonColor
        self.textColor = textColor
        self.sound = sound
        self.buttonActive = buttonActive
        self.onTap = onTap
        self.changeListActivityIndex = changedListActivityIndex
    }
    
    
    var body: some View {
        VStack {
            Button(action: {
      
                if buttonActive == true {
                    HapticManager.instance.impact(style: .light)
                    onTap()
                    
                } else {
                    HapticManager.instance.notification(type: .error)
                }
                
                SoundManager.instance.playSound(sound: self.sound)
                
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    if buttonActive {
                        self.changeListActivityIndex();
                    }
                }
                
                buttonClicked = true
                buttonClicked = false
                
            }, label: {Text(self.textButton.uppercased())
                    .padding(0)
                    .font(.system(size: 20, weight: .regular))
                    .frame(width: UIScreen.main.bounds.width * 0.25,
                           height: UIScreen.main.bounds.height * 0.11)
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
            sound: SoundOption.yeah,
            onTap: {print ("clicouu")
            },
            changedListActivityIndex: { print("mudou index")
            }
            
        )}
}
