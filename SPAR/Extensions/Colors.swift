//
//  Colors.swift
//  SPAR
//
//  Created by Steven Kirke on 13.08.2023.
//

import SwiftUI


extension Color {
    enum Name: String {
        case c_7a7a7a
        case c_15b742
        case c_262626
        case c_d64551
        case c_f1f1f1
        case c_cacaca
        case c_3b2525
        case c_f7f6f7
    }
}

extension Color.Name {
    var path: String {
        "Colors/\(rawValue)"
    }
}

extension Color {
    init(_ name: Color.Name) {
        self.init(name.path)
    }
    
    static let c_7a7a7a = Color(Name.c_7a7a7a)
    static let c_15b742 = Color(Name.c_15b742)
    static let c_262626 = Color(Name.c_262626)
    static let c_d64551 = Color(Name.c_d64551)
    static let c_f1f1f1 = Color(Name.c_f1f1f1)
    static let c_cacaca = Color(Name.c_cacaca)
    static let c_3b2525 = Color(Name.c_3b2525)
    static let c_f7f6f7 = Color(Name.c_f7f6f7)
}

