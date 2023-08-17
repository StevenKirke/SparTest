//
//  Texts'.swift
//  SPAR
//
//  Created by Steven Kirke on 13.08.2023.
//

import SwiftUI

extension Text {
    
    func rotondaBold(size: CGFloat) -> some View {
        self
            .font(Font.custom("Rotonda-Bold", size: size))
    }
    
    func rotondaRegular(size: CGFloat) -> some View {
        self
            .font(Font.custom("RotondaC", size: size))
    }
    
    func ceraRoundRegular(size: CGFloat, weight: Font.Weight) -> some View {
        self
            .font(Font.custom("CeraRoundPro-Regular", size: size))
            .fontWeight(weight)
    }
    
//    func ceraRoundBold(size: CGFloat) -> some View {
//        self
//            .font(Font.custom("CeraRoundPro-Bold", size: size))
//    }
}

