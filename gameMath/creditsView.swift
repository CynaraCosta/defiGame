//
//  creditsView.swift
//  gameMath
//
//  Created by Cynara Costa on 10/10/22.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        
        ZStack {
            BackgroundViewCredits()
            Text("Teste")
        }
        
        
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CreditsView()
        }
    }
}

struct BackgroundViewCredits: View {
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("Purple"), Color("Blue800")]),
                       startPoint: .bottomTrailing,
                       endPoint: .topLeading)
            .edgesIgnoringSafeArea(.all)

        
    }
}
