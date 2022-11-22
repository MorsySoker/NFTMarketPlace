//
//  TopCreatorsView.swift
//  NFT MarketPlace
//
//  Created by Emad Hany Isaac on 21/11/2022.
//

import SwiftUI

struct TopCreatorsView:  View {
    
    @ObservedObject var viewModel: NFTModuleViewModel
    var headerText: String = "Top Creators"
    
    var body: some View {
        
        VStack(spacing: 10){
            HeaderView(text: headerText)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(viewModel.creatorsArray) { creator in
                        CreatorIconView(creator: creator)
                    }
                }
            }
        }
        .padding(.top)
        .padding(.horizontal, 10)
    }
}
struct TopCreatorsView_Previews: PreviewProvider {
    static var previews: some View {
        TopCreatorsView(viewModel: NFTModuleViewModel())
    }
}
