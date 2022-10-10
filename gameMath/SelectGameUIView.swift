//
//  SelectGameUIView.swift
//  gameMath
//
//  Created by Danielly Santos Lopes da Silva on 10/10/22.
//

import SwiftUI

struct SelectGameUIView: View {
    var body: some View {
        
        ZStack {
            BackgroundViewSelect()
            
            VStack(spacing: 40) {
                ButtonUIView(button: "Conta ai!")
                
                ButtonUIView(button: "Cadê o número?")
                
                ButtonUIView(button: "O maioral!")
                
                ButtonUIView(button: "Decorastes?")
                
            }
            
        }
        
        
    }
}




struct BackgroundViewSelect: View {
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("Ocean"), Color("Aqua")]),
                       startPoint: .bottomTrailing,
                       endPoint: .topLeading)
        .edgesIgnoringSafeArea(.all)
    }
}


struct SelectGameUIView_Previews: PreviewProvider {
    static var previews: some View {
        SelectGameUIView()
    }
}
