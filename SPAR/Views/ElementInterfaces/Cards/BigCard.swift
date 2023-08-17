//
//  BigCard.swift
//  SPAR
//
//  Created by Steven Kirke on 14.08.2023.
//

import SwiftUI

struct BigCard: View {
    
    
    var image: String = ""
    var promotionTitle: String = ""
    var price: String = ""
    
    private let width: CGFloat = 136
    private var precent: CGFloat {
        let precent: CGFloat = 132
        return (precent * width) / 100
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack(spacing: 0) {
                Image(image) // replace in CustomImage before add model
                    .resizable()
                    .scaledToFit()
                Spacer()
                HStack(spacing: 5) {
                    Text(price)
                        .ceraRoundRegular(size: 16, weight: .bold)
                    ZStack {
                        Text("\u{20BD}")
                            .ceraRoundRegular(size: 12, weight: .bold)
                            .padding(.bottom, 10)
                            .padding(.trailing, 10)
                        Text("/")
                            .ceraRoundRegular(size: 14, weight: .regular)
                            .rotationEffect(.degrees(25))
                        Text("шт")
                            .ceraRoundRegular(size: 12, weight: .bold)
                            .padding(.trailing, -20)
                            .padding(.top, 10)
                    }
                    Spacer()
                    Image.basketIcon
                        .resizable()
                        .scaledToFit()
                        .frame(width: 13)
                        .foregroundColor(.white)
                        .padding(8 )
                        .background {
                            Circle()
                                .fill(Color.c_15b742)
                        }
                }
                .padding(.horizontal, 5)
                .padding(.bottom, 5)
            }
            if promotionTitle != "" {
                PromotionTitle(title: promotionTitle)
            }
        }
        .frame(width: width, height: precent)
        .background(Color.white)
        .mask(
            RoundedRectangle(cornerRadius: 15)
        )
        .shadow(color: .black.opacity(0.2), radius: 4)
    }
}


struct PromotionTitle: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .rotondaRegular(size: 10)
            .foregroundColor(.white)
            .padding(.vertical, 5)
            .padding(.horizontal, 20)
            .background(
                RoundedCornersShape(corners: [.topLeft, .topRight, .bottomRight], radius: 15)
                    .fill(Color.c_d64551.opacity(0.4))
            )
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}


#if DEBUG
struct BigCard_Previews: PreviewProvider {
    static var previews: some View {
        BigCard(image: "Images/Banners/RecommentTestCard",
                      promotionTitle: "Супер цена",
                      price: "259.90")
    }
}
#endif
