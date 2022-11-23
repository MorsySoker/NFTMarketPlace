//
//  MarketOverViewInfoView.swift
//  NFTMarketPlace
//
//  Created by MorsyElsokary on 22/11/2022.
//

import SwiftUI

struct MarketOverViewInfoView: View {
    
    var halfScreenWidth: CGFloat {
        UIScreen.main.bounds.width/2
    }
    
    var leftInfoView: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("Rank")
                Text("Items")
                Text("Catogories")
                Text("Issue Date")
                Text("All time high")
            }
            .lineLimit(1)
            .minimumScaleFactor(0.5)
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(Color.gray)
            .font(.rubikMedium(15))
            
            VStack(alignment: .trailing, spacing: 10) {
                Text("#12")
                Text("121")
                Text("Dance, Music")
                Text("10 oct,2022")
                Text("0.0023")
            }
            .lineLimit(1)
            .minimumScaleFactor(0.5)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .foregroundColor(Color.white)
            .font(.rubikMedium(15))
        }
        .background(Color.black)
    }
    
    var rightInfoView: some View {
        HStack {
            VStack {
                Text("")
                Text("left")
                Text("left")
                Text("left")
                Text("left")
                Text("left")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(Color.gray)
            .font(.rubikMedium(15))
            
            VStack {
                Text("left")
                Text("left")
                Text("left")
                Text("left")
                Text("left")
                Text("left")
            }
            
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.horizontal, 20)
            .foregroundColor(Color.white)
            .font(.rubikMedium(15))
        }
        .background(Color.black)
    }
    
    var body: some View {
        
        VStack {
            Spacer()
            GeometryReader { reader in
                HStack(spacing: 10) {
                    leftInfoView
                        .frame(width: reader.size.width / 2)
                    rightInfoView
                        .frame(width: reader.size.width / 2)
                }
            }
        }
    }
}

struct MarketOverViewInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MarketOverViewInfoView()
    }
}
