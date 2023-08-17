//
//  CustomTabBar.swift
//  SPAR
//
//  Created by Steven Kirke on 13.08.2023.
//

import SwiftUI

enum CustomTabBar: Int, CaseIterable {
    case main
    case catalog
    case basket
    case profile
}

extension CustomTabBar {
    
    var title: String {
        switch self {
        case .main:
                return "Главная"
        case .catalog:
                return "Каталог"
        case .basket:
                return "Корзина"
        case .profile:
                return "Профиль"
        }
    }
    
    var image: Image {
        switch self {
        case .main:
                return .main
        case .catalog:
                return .catalog
        case .basket:
                return .basket
        case .profile:
                return .profile
        }
    }
}

