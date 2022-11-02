//
//  SelectGameView.swift
//  gameMath
//
//  Created by Danielly Santos Lopes da Silva on 10/10/22.
//

import SwiftUI


struct SelectGameDuoView: View {
    
    @ObservedObject var gamesViewModel: GamesViewModel = .init()
    
    @State var isItemViewPresenting: Bool = false
    
    var body: some View {
        ZStack {
            BackgroundViewSelectGameView()
            
            VStack (spacing: 32){
                
                Text("Selecione um dos mini jogos abaixo!")
//                    .offset(x: 0, y: -40)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(.white)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 20) {
                        ForEach(gamesViewModel.games) { game in
                            
                            NavigationLink(destination: getGameDuoView(game: game)){
                                CardView(title: game.title, description: game.description, image: game.image)
                                
                            }
                            .navigationTitle("")
                            .foregroundColor(.black)
                            .multilineTextAlignment(.leading)
                            
                        }
                    }
                }
                .padding(.horizontal)
//                    .offset(x: 0, y: -40)
                
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.65, alignment: .center)

            
        }
    }
}


// cardview

@ViewBuilder func getGameDuoView(game: Game) -> some View {
    switch game.id {
    case 0: MaioraisDuoView()
//    case 1: MaioraisDuoView()
//    case 2: MaioraisDuoView()
//    case 3: MaioraisDuoView()
    default: EmptyView()
    }
}

// background


