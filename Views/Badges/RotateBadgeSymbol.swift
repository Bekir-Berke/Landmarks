//
//  RotateBadgeSymbol.swift
//  Landmarks
//
//  Created by Bekir Berke Yılmaz on 13.09.2023.
//

import SwiftUI

struct RotateBadgeSymbol: View {
    let angle: Angle
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
        
    }
}

struct RotateBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotateBadgeSymbol(angle:Angle(degrees: 5))
    }
}
