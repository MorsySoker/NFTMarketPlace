//
//  NavigationBarView.swift
//  NFT MarketPlace
//
//  Created by Emad Hany Isaac on 21/11/2022.
//

import SwiftUI

struct NavigationBarView: View{
    
    @State var balance = 12390
    
    var body: some View{
        HStack{
            Button { } label: {
                Image("InnoCoin")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
            }
            
            Text("\(balance) INAN" )
                .foregroundColor(Color.white)
            
            Spacer()
            
            HStack(spacing: 10){

                Button {} label: {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color.white)
                        .frame(width: 24, height: 24)
                }

                Button {} label: {
                    Image(systemName: "bell")
                        .foregroundColor(Color.white)
                        .frame(width: 24, height: 24)
                }
            }
        }
        .padding(.horizontal, 20)
        .padding(.top, 40)
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
