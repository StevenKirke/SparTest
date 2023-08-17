//
//  ButtomTabBar.swift
//  SPAR
//
//  Created by Steven Kirke on 13.08.2023.
//

import SwiftUI

struct ButtomTabBar: View {
    
    @Binding var item: CustomTabBar
    @Binding var isBackMenu: Bool
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(CustomTabBar.allCases, id: \.self) { item in
                Button(action: {
                    DispatchQueue.main.async {
                        withAnimation(.easeInOut) {
                            self.item = item
                            self.isBackMenu.toggle()
                        }
                    }
                }) {
                    VStack(spacing: 0) {
                        item.image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 29)
                        Text(item.title)
                            .ceraRoundRegular(size: 11, weight: .regular)
                    }
                }
                .foregroundColor(self.item == item ? Color.c_15b742 : Color.c_7a7a7a)
                .frame(maxWidth: .infinity)
            }
        }
        .padding(.top, 10)
        .padding(.bottom, 20)
        .background(
            Color.c_f7f6f7
                .shadow(color: .black.opacity(0.4), radius: 10, y: 5)
        )
    }
}

#if DEBUG
struct ButtomTabBarPreviews: PreviewProvider {
    static var previews: some View {
        ButtomTabBar(item: .constant(.main),
                     isBackMenu: .constant(false))
    }
}
#endif
