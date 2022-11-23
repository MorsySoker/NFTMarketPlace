//
//  MarketOverviewView.swift
//  NFTMarketPlace
//
//  Created by Emad Hany Isaac on 21/11/2022.
//

import SwiftUI

struct MarketOverviewView: View {
    var body: some View {
        VStack {
            MarketOverviewHeaderView()
            marketPriceOverView()
            Spacer()
        }.padding(.top)
        .setBackground()
    }
}

struct MarketOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        MarketOverviewView()
    }
}
