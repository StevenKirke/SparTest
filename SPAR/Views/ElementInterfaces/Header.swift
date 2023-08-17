//
//  Header.swift
//  SPAR
//
//  Created by Steven Kirke on 14.08.2023.
//

import SwiftUI

struct Header: View {
    
    var title: String = "Москва, Москва и Московская область"
    var action: () -> Void
    
    var body: some View {
        HStack(spacing: 10) {
            HStack {
                Image.iconMarker
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18)
                    .foregroundColor(.c_d64551)
                Text(title)
                    .rotondaRegular(size: 15)
                    .foregroundColor(.c_262626)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 7)
                .overlay {
                    Capsule()
                        .stroke(Color.c_f1f1f1)
                }
            Button(action: action) {
                VStack(spacing: 4) {
                    ForEach(0..<3, id: \.self) { element in
                       RoundedRectangle(cornerRadius: 15)
                            .fill(Color.c_15b742)
                            .frame(width: 18, height: 2)
                    }
                }
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 5)
        .overlay(
            Rectangle()
                .frame(width: nil, height: 1, alignment: .bottom)
                .foregroundColor(Color.c_cacaca), alignment: .bottom)
    }
}

#if DEBUG
struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header(title: "Москва, Москва и Московская область", action: {})
    }
}
#endif
