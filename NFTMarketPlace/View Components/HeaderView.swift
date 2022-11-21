//
//  HeaderView.swift
//  NFT MarketPlace
//
//  Created by Emad Hany Isaac on 21/11/2022.
//

import SwiftUI

struct HeaderView: View {
    
    var text: String
    var font: Font = .rubikMedium(14)
    var foreColor: Color = .white
    
    var body: some View {
        HStack{
            Text(text)
                .font(font)
                .foregroundColor(foreColor)
            Spacer()
        }
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(text: "Morsy")
    }
}
