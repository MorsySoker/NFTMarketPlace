//
//  MarketOverviewView.swift
//  NFTMarketPlace
//
//  Created by MorsyElsokary on 21/11/2022.
//

import SwiftUI

struct MarketOverviewView: View {
    var body: some View {
        VStack {
            MarketOverviewHeaderView()
            Spacer()
        }
        .setBackground()
    }
}

struct MarketOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        MarketOverviewView()
    }
}
