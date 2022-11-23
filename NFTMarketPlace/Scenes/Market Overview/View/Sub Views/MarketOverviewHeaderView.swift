//
//  MarketOverviewHeaderView.swift
//  NFTMarketPlace
//
//  Created by Emad Hany Isaac on 21/11/2022.
//

import SwiftUI

struct MarketOverviewHeaderView: View {
    var body: some View {
        HStack(alignment: .top){
            Image("creator7")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading){
                
                Text("Jasmine_Life")
//                    .foregroundColor(Color.white)
                Text("Creator")
                    .foregroundColor(Color("#FD405E"))
            }
            Image(systemName: "checkmark.seal.fill")
                .foregroundColor(Color("#32C5FF"))
            Spacer()
            Button {}
        label: {
                Text("Ting")
                .foregroundColor(Color.white)
                .background(
                Rectangle()
                    .frame(width: 100, height: 30)
                    .foregroundColor(Color("#FD405E"))
                    .cornerRadius(4)
                )
                .padding(.trailing,3)
            Image(systemName: "bell.fill")
                .foregroundColor(Color.white)
        
        }.padding(.trailing, 13)

            
        }.padding( 10)
    }
}

struct MarketOverviewHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MarketOverviewHeaderView()
    }
}
