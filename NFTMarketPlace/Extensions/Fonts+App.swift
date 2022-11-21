//
//  Fonts+App.swift
//  Music Module
//
//  Created by Emad Hany Isaac on 09/11/2022.
//

import SwiftUI

extension Font {
    
    // MARK: - Methods
    
    static func rubikRegular(_ size: CGFloat) -> Font {
        Font.custom("Rubik-Regular", size: size)
    }
    
    static func rubikMedium(_ size: CGFloat) -> Font {
        Font.custom("Rubik-Medium", size: size)
    }
}
