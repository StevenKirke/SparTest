//
//  ProfileView.swift
//  SPAR
//
//  Created by Steven Kirke on 14.08.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        Text("Profile view")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#if DEBUG
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
#endif
