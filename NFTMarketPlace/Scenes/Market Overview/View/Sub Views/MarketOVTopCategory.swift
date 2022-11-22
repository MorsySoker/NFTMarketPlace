//
//  MarketOVTopCategory.swift
//  NFTMarketPlace
//
//  Created by Emad Isaac on 22/11/2022.
//

import SwiftUI

enum MOVTopCategory: String, CaseIterable {
    
    case overView
    case info
    case nfTs
    
    var tabText: String {
        self.rawValue.capitalized
    }
}

struct marketPriceOverView: View {
    
    
    @State private var categoryType: MOVTopCategory = .overView
    
    // MARK: - view compnents
    
    @ViewBuilder
    private var currentSelected: some View {
        switch categoryType {
        case .overView:
            over()
        case .info:
            over2()
        case .nfTs:
            over3()
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            HStack(spacing: 15) {
                ForEach(MOVTopCategory.allCases, id: \.self) { category in
                    PickerSelectors(title: category.tabText, isSelected: categoryType == category)
                        .onTapGesture {
                            categoryType = category
                        }
                }
            }
            .padding()
            currentSelected
        }
        .ignoresSafeArea(.all)
    }
}

struct marketPriceOverView_Previews: PreviewProvider {
    static var previews: some View {
        marketPriceOverView()
    }
}

struct over: View{
    var body: some View{
        VStack(alignment: .leading){
            Text("Market Price")
                .font(.rubikMedium(12))
                .foregroundColor(Color.black)
            
            Text("0.0261 INAN")
                .font(.rubikMedium(14))
                .foregroundColor(.black)
            
            Text("$145.50 ")
                .font(.rubikMedium(12))
                .foregroundColor(.black)
            HStack(spacing: 5) {
                Image(systemName: "arrowtriangle.up.fill")
                    .foregroundColor(Color.green)
                    .fixedSize()
                Text("+12.63%")
                    .foregroundColor(Color.green)
                    .font(.rubikRegular(9))
            }.padding(.horizontal)
        }
    }
}
struct over2: View{
    var body: some View{
        VStack{
            Text("info")
        }
    }
}

struct over3: View{
    var body: some View{
        VStack{
            Text("nft")
        }
    }
}


struct PickerSelectors: View {
    
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


