//
//  CreatorCardView.swift
//  NFT MarketPlace
//
//  Created by Emad Hany Isaac on 16/11/2022.
//

import Foundation
import SwiftUI

struct CreatorCardView: View {
    
    var creator: CreatorModel
    var onPressed: (() -> Void)?
    
    var body: some View {
        
        Button { if let onPressed { onPressed() } } label: {
            VStack(alignment: .leading) {
                HStack{
                    Image("\(creator.image)")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                    VStack(alignment: .leading){
                        Text("\(creator.name)")
                            .foregroundColor(Color.black)
                            .font(.rubikRegular(12))
                        Text("\(creator.role)")
                            .foregroundColor(Color.black)
                            .font(.rubikRegular(12))
                    }
                }
                HStack{
                    VStack(alignment: .leading){
                        Text("\(creator.balanceInan) INAN")
                            .font(.rubikRegular(12))
                        Spacer()
                            .frame(height: 3)
                        Text("≈ $\(creator.balanceDollar) ")
                            .font(.rubikRegular(12))
                    }.padding(.top)
                    VStack(spacing: 0) {
                        Image("greenGraph")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 25)
                        HStack(spacing: 5) {
                            Image(systemName: "arrowtriangle.up.fill")
                                .foregroundColor(Color.green)
                            Text("+\(creator.precentageValue)%")
                                .foregroundColor(Color("precentColor"))
                                .font(.rubikRegular(12))
                        }
                    }
                    
                }
            }
            .padding(10)
            .background(Color.gray.opacity(0.3))
        }
    }
}

struct myPortofolio_Previews: PreviewProvider {

    static var previews: some View {
        CreatorCardView(creator: CreatorModel(image: "creator1", name: "@Moshe.Ba...", precentageValue: "+12.63%", role: "Dance", balanceInan:  "1000", balanceDollar: "200"))
    }
}




