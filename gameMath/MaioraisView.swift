//
//  MaioraisView.swift
//  gameMath
//
//  Created by Cynara Costa on 18/10/22.
//

import SwiftUI

struct MaioraisVIew: View {
    
    var body: some View {
        Text("Os maiorais")
    }
    
}

struct MaioraisBackgroundView: View {
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("Ocean"), Color("Aqua")]),
                       startPoint: .bottomTrailing,
                       endPoint: .topLeading)
            .edgesIgnoringSafeArea(.all)
    }
}

struct MaioraisView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MaioraisVIew()
        }
    }
}
