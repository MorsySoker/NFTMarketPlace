//
//  NFTModuleView.swift
//  NFTMarketPlace
//
//  Created by Emad Hany Isaac on 21/11/2022.
//

import SwiftUI

struct NFTModuleView: View {
    
    @StateObject var viewModel: NFTModuleViewModel = NFTModuleViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationBarView()
            TopCreatorsView(viewModel: viewModel)
            CreatorsCardsView(viewModel: viewModel)
            CreatorsCategoryPickerView(viewModel: viewModel)
        }
        .setBackground()
        .ignoresSafeArea(.all)
        
    }
}

struct NFTModuleView_Previews: PreviewProvider {
    static var previews: some View {
        NFTModuleView()
    }
}
