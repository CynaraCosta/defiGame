//
//  SelectGameView.swift
//  gameMath
//
//  Created by Danielly Santos Lopes da Silva on 10/10/22.
//

import SwiftUI

struct DestinationView: View {
    @Binding var isPresenting: Bool
    
    var game: String
    
    var body: some View {
        
        Text("Jogo \(game)")
        
        //        .sheet(isPresented: $isPresenting, content: {
        //            SelectGameView()
        //    })
    }
}


struct SelectGameView: View {
    
    @State private var index = 0
    
    @ObservedObject var gamesViewModel: GamesViewModel = .init()
    
    @State var isItemViewPresenting: Bool = false
    //    @StateObject var selectedItem: Game
    
    var body: some View {
        ZStack {
            BackgroundViewSelectGameView()
            
            VStack {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 16) {
                        ForEach(gamesViewModel.games) { game in
                            
                            NavigationLink(isActive:  $isItemViewPresenting,
                                           destination: { DestinationView(isPresenting: $isItemViewPresenting, game: game.title) })
                            VStack (spacing: 8){
                                CardView(title: game.title, description: game.description)
                            }
                            .foregroundColor(.black)
                            .multilineTextAlignment(.leading)
                            
                            
                            //                            Button {
                            //                                selectedItem = game
                            //                                isItemViewPresenting = true
                            //
                            //                            } label: {
                            //                                VStack (spacing: 8){
                            //                                    CardView(title: game.title, description: game.description)
                            //                                }
                            //                                .foregroundColor(.black)
                            //                                .multilineTextAlignment(.leading)
                            //                            }
                            //
                            //                        }.background(
                            //                            NavigationLink(destination: DestinationView(isPresenting: $isItemViewPresenting, game: selectedItem.title)) {EmptyView()}
                            //                        )
                        }
                    }.padding()
                        .offset(x: 0, y: -40)
                    
                    
                    
                }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.65, alignment: .center)
                
                
            }
        }
    }
}


struct CardView: View {
    
    var title: String
    var description: String
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(Color.white)
                .frame(width: UIScreen.main.bounds.width * 0.61, height: UIScreen.main.bounds.height * 0.50, alignment: .center)
                .cornerRadius(8)
            
            
            VStack (alignment: .center) {
                Rectangle()
                    .fill(Color.gray)
                    .cornerRadius(8)
                    .frame(width: UIScreen.main.bounds.width * 0.52, height: UIScreen.main.bounds.height * 0.33, alignment: .center)
                
                
                VStack (alignment: .leading, spacing: 4){
                    Text(title)
                        .bold()
                    
                    Text(description)
                        .font(.caption)
                }.frame(width: UIScreen.main.bounds.width * 0.52, height: UIScreen.main.bounds.height * 0.09, alignment: .leading)
                
                
            }
            
        }
        
        
    }
}

struct BackgroundViewSelectGameView: View {
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("Ocean"), Color("Aqua")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct SelectGameView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                SelectGameView()
            }
        }
    }
}

