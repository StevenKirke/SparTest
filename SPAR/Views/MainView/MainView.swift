//
//  MainView.swift
//  SPAR
//
//  Created by Steven Kirke on 14.08.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(spacing: 0) {
            Header(title: "Москва, Москва и Московская область", action: {})
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 15) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(0..<6, id: \.self) { element in
                                CircleCard(text: "Привилегии \"Мой SPAR\"",
                                           image: "Images/Icons/testCircleIcon")
                            }
                        }
                        .padding(.leading, 10)
                    }
                    ScrollForLittleCard { title, image in
                        Banner(image: "Images/Banners/SparVine", action: {})
                    }
                    HStack(spacing: 0) {
                        Image("Images/Banners/promoCode")
                            .resizable()
                            .scaledToFit()
                            .mask(
                                RoundedRectangle(cornerRadius: 15)
                            )
                            .shadow(color: .black.opacity(0.2), radius: 4, y: 5)
                    }
                    .padding(.horizontal, 15)

                    ScrollForLittleCard { title, image in
                        Littlcard(text: title, image: image)
                    }
                    ScrollForBigCard(title: "Рекомендуем") { image, promotion, price in
                        BigCard(image: "Images/Banners/RecommentTestCard",
                                      promotionTitle: promotion,
                                      price: price)
                    }
                    ScrollForBigCard(title: "Сладкое настроение") { image, promotion, price in
                        BigCard(image: image,
                                      promotionTitle: promotion,
                                      price: price)
                    }
                }
                .padding(.top, 15)
                .padding(.bottom, 50)
            }
        }
    }
}


struct ScrollForBigCard<Content: View>: View {
    
    var title: String
    var content: (String, String, String) -> Content
    // Add array data from network
    
    var body: some View {
        VStack(spacing: 15) {
            Text(title)
                .ceraRoundRegular(size: 20, weight: .bold)
                .foregroundColor(.c_262626)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 15)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(0..<6, id: \.self) { element in
                        content("Images/Banners/IceCream",
                                "",
                                "259.90")
                            .padding(.vertical, 4)
                    }
                }
                .padding(.horizontal, 15)
            }
        }
    }
}

struct ScrollForLittleCard<Content: View>: View {
    
    var content: (String, String) -> Content
    // Add array data from network
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                ForEach(0..<6, id: \.self) { element in
                    content("Абонемент на кофе", "Images/Banners/AbonimentCoffe")
                }
            }
            .padding(.leading, 10)
        }
    }
}


#if DEBUG
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
#endif
