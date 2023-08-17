//
//  Littlcard.swift
//  SPAR
//
//  Created by Steven Kirke on 14.08.2023.
//

import SwiftUI

struct Littlcard: View {
    
    var text: String
    var image: String
    let width: CGFloat = 100
    var precent: CGFloat {
        let precent: CGFloat = 123
        return (precent * width) / 100
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(image)
                .resizable()
                .frame(maxHeight: .infinity)
            Text(text)
                .rotondaBold(size: 16)
                .foregroundColor(.c_3b2525)
                .padding([.leading, .top], 13)
                .frame(maxWidth: width / 0.8, alignment: .leading)

        }
        .frame(width: width, height: precent)
        .mask {
            RoundedRectangle(cornerRadius: 15)
        }
        .shadow(color: .black.opacity(0.2), radius: 4, x: 5)

    }
}

#if DEBUG
struct Littlcard_Previews: PreviewProvider {
    static var previews: some View {
        Littlcard(text: "Абонемент на кофе", image: "Images/Banners/AbonimentCoffe")
    }
}
#endif
