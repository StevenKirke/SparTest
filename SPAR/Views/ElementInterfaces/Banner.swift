//
//  Banner.swift
//  SPAR
//
//  Created by Steven Kirke on 14.08.2023.
//

import SwiftUI

struct Banner: View {
    
    var image: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(image)
                 .resizable()
                 .scaledToFit()
                 .frame(width: UIScreen.main.bounds.width - 60)
                 .clipShape(RoundedRectangle(cornerRadius: 15))
        }
    }
}

#if DEBUG
struct Banner_Previews: PreviewProvider {
    static var previews: some View {
        Banner(image: "Images/Banners/SparVine", action: {})
    }
}
#endif
