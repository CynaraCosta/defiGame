//
//  ButtonUIView.swift
//  gameMath
//
//  Created by Danielly Santos Lopes da Silva on 10/10/22.
//

import SwiftUI

struct ButtonUIView: View {
   
    let button : String
    
    init(button: String) {
        self.button = button
    }
    

    var body: some View {
        Button {
            
        } label: {
            Text(button)
                .foregroundColor(Color("DarkBlue"))
                .font(.headline)
                .frame(width: 236)
                .frame(height: 40)
                .border(.white)
                .background(.white)
               // .cornerRadius()
                
        }
        .buttonStyle(DefaultButtonStyle())

    }
}










struct ButtonUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonUIView(button: "Testeeee")
    }
}
