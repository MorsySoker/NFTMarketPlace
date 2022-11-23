//
//  CreatorsCardsView.swift
//  NFT MarketPlace
//
//  Created by Emad Hany Isaac on 15/11/2022.
//

import SwiftUI

struct CreatorsCardsView: View{
    
    @ObservedObject var viewModel: NFTModuleViewModel
    
    var body: some View{
        VStack(spacing: 15){
            HStack{
                Text("Top Creators")
                    .font(.rubikMedium(12))
                    .foregroundColor(Color.white)
                
                Spacer()
                
                Button { } label: {
                    Text("View more")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color.gray)
                }
            }
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 20){
                    ForEach(viewModel.creatorsArray) { creator in
                        CreatorCardView(creator: creator) {
                            viewModel.navigateToCreator = true
                        }
                    }
                }
            }
        }
        .padding([.horizontal, .top])
    }
}
