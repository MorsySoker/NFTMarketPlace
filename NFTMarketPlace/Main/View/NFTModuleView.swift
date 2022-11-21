//
//  NFTModuleView.swift
//  NFTMarketPlace
//
//  Created by MorsyElsokary on 21/11/2022.
//

import SwiftUI

struct NFTModuleView: View {
    
    @StateObject var viewModel: NFTModuleViewModel = NFTModuleViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationBarView()
            TopCreatorsView(viewModel: viewModel)
            CreatorsCardsView(viewModel: viewModel)
            //            creatorScrollView()
            Spacer()
        }
        .setBackground()
    }
}

struct NFTModuleView_Previews: PreviewProvider {
    static var previews: some View {
        NFTModuleView()
    }
}