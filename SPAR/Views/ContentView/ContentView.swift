//
//  ContentView.swift
//  SPAR
//
//  Created by Steven Kirke on 13.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var globalModel: GlobalModel
    @ObservedObject var contentVM: ContentViewModel = ContentViewModel()
    
    var body: some View {
        ZStack {
            GeometryReader { proxy in
                Color.clear
                    .edgesIgnoringSafeArea(.all)
                    .onAppear {
                        self.globalModel.safeArea = (proxy.safeAreaInsets.top, proxy.safeAreaInsets.bottom)
                    }
                CurentView(contentVM: contentVM)
                ButtomTabBar(item: $contentVM.itemNenu, isBackMenu: $contentVM.backInMenu)
                    .frame(maxHeight: .infinity, alignment: .bottom)
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct CurentView: View {
    
    @ObservedObject var contentVM: ContentViewModel
    
    var body: some View {
        VStack(spacing: 0) {
            switch contentVM.itemNenu {
                case .main: MainView()
                case .catalog: CatalogView()
                case .basket: BasketView()
                case .profile: ProfileView()
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(globalModel: GlobalModel())
    }
}
#endif

