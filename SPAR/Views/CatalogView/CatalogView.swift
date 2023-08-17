//
//  CatalogView.swift
//  SPAR
//
//  Created by Steven Kirke on 14.08.2023.
//

import SwiftUI

struct CatalogView: View {
    var body: some View {
        Text("Catalog view")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#if DEBUG
struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
#endif
