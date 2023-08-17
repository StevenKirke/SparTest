//
//  Images.swift
//  SPAR
//
//  Created by Steven Kirke on 13.08.2023.
//

import SwiftUI

extension Image {
    
    enum TabBar: String {
        case CatalogIcon
        case ProfileIcion
        case BasketIcon
        case iconSpar
    }
    enum Icon: String {
        case iconMarker
        case testCircleIcon
        case BasketIcon
    }
    
    init(_ name: Image.TabBar) {
        self.init(name.path)
    }
    
    init(_ name: Image.Icon) {
        self.init(name.path)
    }
    
    static let catalog = Image(TabBar.CatalogIcon)
    static let profile = Image(TabBar.ProfileIcion)
    static let basket = Image(TabBar.BasketIcon)
    static let main = Image(TabBar.iconSpar)
    
    static let iconMarker = Image(Icon.iconMarker)
    static let testCircleIcon = Image(Icon.testCircleIcon)
    static let basketIcon = Image(Icon.BasketIcon)
}

extension Image.TabBar {
    var path: String {
        "Images/IconForTabBar/\(rawValue)"
    }
}

extension Image.Icon {
    var path: String {
        "Images/Icons/\(rawValue)"
    }
}
