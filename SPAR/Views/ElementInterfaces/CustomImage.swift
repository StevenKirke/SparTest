//
//  CustomImage.swift
//  SPAR
//
//  Created by Steven Kirke on 16.08.2023.
//

import SwiftUI

struct CustomImage: View {
    
    let image: String
    
    var body: some View {
        AsyncImage(url: URL(string: image)) { phase in
            switch phase {
                case .empty:
                    ProgressView()
                        .tint(.c_262626)
                case .success(let image):
                    image
                        .resizable()
                case .failure(_):
                    Image(systemName: "paperclip")
                        .resizable()
                @unknown default:
                    Image(systemName: "paperclip")
                        .resizable()
            }
        }
    }
}
