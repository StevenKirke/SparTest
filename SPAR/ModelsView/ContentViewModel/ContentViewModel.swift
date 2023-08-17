//
//  ContentViewModel.swift
//  SPAR
//
//  Created by Steven Kirke on 14.08.2023.
//

import Foundation

class ContentViewModel: ObservableObject {
    
    @Published var backInMenu: Bool = false
    @Published var itemNenu: CustomTabBar = CustomTabBar.main

}
