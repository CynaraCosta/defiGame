//
//  ProgressBar.swift
//  gameMath
//
//  Created by Cynara Costa on 20/10/22.
//

import SwiftUI

struct ProgressBar: View {
    
    var width: CGFloat = 200
    var height: CGFloat = 20
    var percent: CGFloat = 30
    var color: Color = Color.purple
    
    var body: some View {
        let multiplier = width / 40
        
        ZStack (alignment: .leading){
            RoundedRectangle(cornerRadius: height, style: .continuous)
                .frame(width: width, height: height)
                .foregroundColor(Color.black.opacity(0.1))

            RoundedRectangle(cornerRadius: height, style: .continuous)
                .frame(width: multiplier * percent, height: height)
                .background(
                    color
                        .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))

                ).foregroundColor(.clear)
            
        }
        
        
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar()
    }
}
