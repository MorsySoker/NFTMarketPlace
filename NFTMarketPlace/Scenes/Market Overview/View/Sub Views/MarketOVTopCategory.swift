//
//  MarketOVTopCategory.swift
//  NFTMarketPlace
//
//  Created by Emad Isaac on 22/11/2022.
//

import SwiftUI
import SwiftUICharts

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
    var isSelected: Bool = false
    var demoData: [Double] = [2,3,2,4,2,3,2,5,2,2.5,1.5,3,2,4,2,3.5]
    var body: some View{
        VStack {
            HStack {
                VStack(alignment: .leading){
                    Text("Market Price")
                        .font(.rubikMedium(12))
                        .foregroundColor(Color("#DBDBDB"))
                    
                    Text("0.0261 INAN")
                        .font(.rubikMedium(14))
                        .foregroundColor(.white)
                    
                    
                    HStack(spacing: 1) {
                        Text("$145.50 ")
                            .font(.rubikMedium(12))
                            .foregroundColor(.white)
                        
                        Image(systemName: "arrowtriangle.up.fill")
                            .foregroundColor(Color.green)
                            .font(.rubikRegular(9))
                        Text("+12.63%")
                            .foregroundColor(Color.green)
                            .font(.rubikRegular(9))
                        
                    }
                }.padding(.horizontal, 6)
                Spacer()
                VStack(alignment: .leading){
                    HStack(spacing: 5){
                        Text("24h High")
                            .font(.rubikMedium(10))
                            .foregroundColor(Color("#B7B7B7"))
                        
                        Text("0.0330")
                            .font(.rubikMedium(10))
                            .foregroundColor(.white)
                    }
                    
                    HStack(spacing: 7){
                        Text("24h Low")
                            .font(.rubikMedium(10))
                            .foregroundColor(Color("#B7B7B7"))
                        
                        Text("0.0200")
                            .font(.rubikMedium(10))
                            .foregroundColor(.white)
                    }
                    
                    HStack(spacing: 11){
                        Text("24h Vol")
                            .font(.rubikMedium(10))
                            .foregroundColor(Color("#B7B7B7"))
                        
                        Text("324.9M")
                            .font(.rubikMedium(10))
                            .foregroundColor(.white)
                    }
                    
                    
                    
                }.padding(.trailing, 6)
            }
            Spacer()
                .frame(height: 18)
            HStack(spacing:40){
                Text("1h")
                    .font(.rubikMedium(12))
                    .foregroundColor(Color.white)
                Text("1d")
                    .font(.rubikMedium(12))
                    .foregroundColor(Color("#B7B7B7"))
                Text("1w")
                    .font(.rubikMedium(12))
                    .foregroundColor(Color("#B7B7B7"))
                Text("1m")
                    .font(.rubikMedium(12))
                    .foregroundColor(Color("#B7B7B7"))
                Text("6m")
                    .font(.rubikMedium(12))
                    .foregroundColor(Color("#B7B7B7"))
                Text("1y")
                    .font(.rubikMedium(12))
                    .foregroundColor(Color("#B7B7B7"))
                Text("All")
                    .font(.rubikMedium(12))
                    .foregroundColor(Color("#B7B7B7"))
               
            }
            VStack(alignment: .leading){
                Divider()
                    .frame(width: .infinity)
                    .padding(.horizontal)
                Spacer()
                    .frame(height: 0)
                Rectangle()
                    .frame(width: 28, height: 2)
                    .foregroundColor(isSelected ? .gray : .red)
                    .opacity(isSelected ? 0 : 1)
                    .padding(.leading,17)
            }
            HStack{
                LineChart()
                    .data(demoData)
                    .chartStyle(ChartStyle(backgroundColor: .clear,
                                           foregroundColor: ColorGradient(Color("DarkRed"), Color("LightRed"))))
                    .frame(width: .infinity, height: 199)
                VStack(spacing :20){
                    Text("0.0330")
                        .font(.rubikMedium(10))
                        .foregroundColor(Color("#B7B7B7"))
                    Text("0.0330")
                        .font(.rubikMedium(10))
                        .foregroundColor(Color("#B7B7B7"))
                    Text("0.0330")
                        .font(.rubikMedium(10))
                        .foregroundColor(Color("#B7B7B7"))
                        .background(
                        Rectangle()
                            .background(Color.red)
                            .opacity(0.5)
                            .frame(width: 40, height: 10)
                        )
                    Text("0.0330")
                        .font(.rubikMedium(10))
                        .foregroundColor(Color("#B7B7B7"))
                    Text("0.0330")
                        .font(.rubikMedium(10))
                        .foregroundColor(Color("#B7B7B7"))
                    Text("0.0330")
                        .font(.rubikMedium(10))
                        .foregroundColor(Color("#B7B7B7"))
                    Text("0.0330")
                        .font(.rubikMedium(10))
                        .foregroundColor(Color("#B7B7B7"))
                }.padding(.trailing)
            }
            HStack{
                Text("08/11 10:42 PM")
                    .font(.rubikMedium(10))
                    .foregroundColor(Color("#B7B7B7"))
                Text("08/11 10:42 PM")
                    .font(.rubikMedium(10))
                    .foregroundColor(Color("#B7B7B7"))
                Text("08/11 10:42 PM")
                    .font(.rubikMedium(10))
                    .foregroundColor(Color("#B7B7B7"))
                Text("08/11 10:42 PM")
                    .font(.rubikMedium(10))
                    .foregroundColor(Color("#B7B7B7"))
                Spacer()
            }.padding(.leading,16)
            Spacer()
                .frame(height: 20)
            HStack(spacing: 25){
                Text("Order Book")
                    .font(.rubikMedium(12))
                    .foregroundColor(.white)
                
                Text("Trade History")
                    .font(.rubikMedium(12))
                    .foregroundColor(Color("#B7B7B7"))
                
                Text("Open Orders")
                    .font(.rubikMedium(12))
                    .foregroundColor(Color("#B7B7B7"))
                Spacer()
            }.padding(.leading,6)
            VStack(alignment: .leading){
                Divider()
                    .frame(width: .infinity)
                    .padding(.horizontal)
                Spacer()
                    .frame(height: 0)
                Rectangle()
                    .frame(width: 55, height: 2)
                    .foregroundColor(isSelected ? .gray : .red)
                    .opacity(isSelected ? 0 : 1)
                    .padding(.leading,7)
            }
            HStack(spacing: 170){
                Text("Bid")
                    .font(.rubikMedium(10))
                    .foregroundColor(Color("#B7B7B7"))
                
                Text("Ask")
                    .font(.rubikMedium(10))
                    .foregroundColor(Color("#B7B7B7"))
                Spacer()
            }.padding(.leading,6)
                    
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


