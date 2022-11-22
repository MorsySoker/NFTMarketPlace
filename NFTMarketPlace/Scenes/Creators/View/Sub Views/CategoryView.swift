//
//  CreatorsCategoryPickerView.swift
//  NFT MarketPlace
//
//  Created by Emad Hany Isaac on 20/11/2022.
//

import SwiftUI

enum NFTCreatorCategory: String, CaseIterable {
    
    case trending
    case gainer
    case loser
    case new
    case favorite
    
    var tabText: String {
        self.rawValue.capitalized
    }
}

struct CreatorsCategoryPickerView: View {
    
    @ObservedObject var viewModel: NFTModuleViewModel
    @State private var categoryType: NFTCreatorCategory = .trending
    
    // MARK: - view compnents
    
    @ViewBuilder
    private var currentSelector: some View {
        switch categoryType {
        case .trending:
            creatorsCategorized(with: viewModel)
            
        case .gainer:
            creatorsCategorized(with: viewModel)
            
        case .loser:
            creatorsCategorized(with: viewModel)
            
        case .new:
            creatorsCategorized(with: viewModel)
            
        case .favorite:
            creatorsCategorized(with: viewModel)
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            HStack(spacing: 15) {
                ForEach(NFTCreatorCategory.allCases, id: \.self) { category in
                    PickerSelector(title: category.tabText, isSelected: categoryType == category)
                        .onTapGesture {
                            categoryType = category
                        }
                }
            }
            .padding()
            currentSelector
        }
        .ignoresSafeArea(.all)
    }
    
    
    private func creatorsCategorized(with viewModel: NFTModuleViewModel) -> some View {
        ScrollView(showsIndicators: false) {
            ForEach(viewModel.creatorsArray) { creator in
                creatorListCellView(creator: creator)
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CreatorsCategoryPickerView(viewModel: NFTModuleViewModel())
    }
}


struct creatorListCellView: View {
    
    var creator: CreatorModel
    
    var body: some View {
        HStack(spacing: 10) {
            Image("\(creator.image)")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(creator.name)
                    .foregroundColor(.white)
                    .font(.rubikMedium(14))
                Text(creator.role)
                    .foregroundColor(.gray)
                    .font(.rubikMedium(10))
            }
            
            Spacer()
            
            Image("greenGraph")
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 25)
            
            VStack(spacing: 7) {
                Text("\(creator.balanceInan) INAN")
                    .font(.rubikRegular(15))
                    .foregroundColor(Color.white)
                
                HStack(spacing: 5) {
                    Image(systemName: "arrowtriangle.up.fill")
                        .foregroundColor(Color.green)
                    Text("+\(creator.precentageValue)%")
                        .foregroundColor(.green)
                        .font(.rubikRegular(12))
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct PickerSelector: View {
    
    // MARK: - Properties
    
    var title: String
    var isSelected: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text(title)
                .font(.system(size: isSelected ? 15 : 13,
                              weight: .bold,
                              design: .rounded))
                .foregroundColor(isSelected ? .white : .gray)
                .lineLimit(1)
                .minimumScaleFactor(0.2)
            
            Rectangle()
                .frame(height: 2, alignment: .center)
                .foregroundColor(isSelected ? .red : .gray)
                .opacity(isSelected ? 1 : 0)
        }
        .frame(minWidth: 0, maxWidth: .infinity)
    }
}
