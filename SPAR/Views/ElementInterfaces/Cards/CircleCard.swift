//
//  CircleCard.swift
//  SPAR
//
//  Created by Steven Kirke on 14.08.2023.
//

import SwiftUI

struct CircleCard: View {
    
    let text: String
    let image: String
    
    var body: some View {
        VStack(spacing: 10) {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 90)
                .mask(
                    Circle()
                        .padding(2)
                )
                .overlay(
                    Circle()
                        .stroke(Color.c_15b742, lineWidth: 1.5)
                )
            Text(text)
                .ceraRoundRegular(size: 12, weight: .regular)
                .foregroundColor(.c_262626)
                .multilineTextAlignment(.center)
                .lineSpacing(2)
                .lineLimit(2)
        }
        .frame(maxWidth: 70)
        .padding(2)
    }
}


#if DEBUG
struct CircleCard_Previews: PreviewProvider {
    static var previews: some View {
        CircleCard(text: "Привилегии \"Мой SPAR\"",
                    image: "Images/Icons/testCircleIcon")
    }
}
#endif
