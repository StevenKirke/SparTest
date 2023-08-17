//
//  BasketView.swift
//  SPAR
//
//  Created by Steven Kirke on 14.08.2023.
//

import SwiftUI

struct BasketView: View {
    var body: some View {
        Text("Basket view")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#if DEBUG
struct BasketView_Previews: PreviewProvider {
    static var previews: some View {
        BasketView()
    }
}
#endif
