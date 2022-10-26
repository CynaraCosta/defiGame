//
//  FinishDuoPopUp.swift
//  gameMath
//
//  Created by Cynara Costa on 26/10/22.
//

import SwiftUI


struct FinishDuoPopUp: View {
    
    @Binding var show: Bool
    @Binding var blur: CGFloat
    @Binding var points: Int
    @Binding var win: Bool
    
    var body: some View {
        
        if show {
            ZStack {
                Rectangle()
                    .fill(.white)
                    .frame(width: UIScreen.main.bounds.width * 0.75, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                    .transition(.scale)
                    .cornerRadius(16)
                
                VStack (spacing: 24) {
                    
                    VStack (spacing: 8) {
                        Text("Parabéns!")
                            .font(.system(size: 20, weight: .regular))
                        if win {
                            Text("Você ganhou com")
                                .font(.system(size: 20, weight: .regular))
                        } else {
                            Text("Você fez")
                                .font(.system(size: 20, weight: .regular))
                        }
                        
                        Text("\(points)")
                            .font(.system(size: 32, weight: .bold))
                        Text("pontos!")
                            .font(.system(size: 20, weight: .regular))
                    }
                    
                    
                    HStack (spacing: 16) {
                        Button {
                            withAnimation{
                                
                            }
                        }label: {
                            Text("De novo!")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .semibold))
                                .padding()
                                .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.04)
                                .background(Color("PurpleDetail"))
                                .cornerRadius(50)
                        }
                        
                        Button {
                            withAnimation{
                                
                            }
                        }label: {
                            Text("Menu")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .semibold))
                                .padding()
                                .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.04)
                                .background(Color("PurpleDetail"))
                                .cornerRadius(50)
                        }
                        
                    }
                    
                }
                
            }
        }
        
        
        
    }
}

// 75% w
// 30% h

//struct FinishDuoPopUp_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            FinishDuoPopUp(show: $show, blur: $blur, points: $points)
//        }
//    }
//}

