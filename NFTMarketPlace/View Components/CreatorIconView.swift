//
//  CreatorIconView.swift
//  NFT MarketPlace
//
//  Created by Emad Hany Isaac on 16/11/2022.
//

import Foundation
import SwiftUI

struct CreatorIconView: View {
    
    var creator: CreatorModel
    
    var body: some View {
        Button { } label: {
            VStack(alignment: .leading, spacing: 2) {
                Image("\(creator.image)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
                
                Text("\(creator.name)")
                    .foregroundColor(.gray)
                    .font(.rubikRegular(12))
                HStack {
                    Image(systemName: "arrowtriangle.up.fill")
                        .foregroundColor(.green)
                    Text("\(creator.precentageValue)")
                        .foregroundColor(.green)
                        .font(.rubikRegular(12))
                }
            }
        }
    }
}
