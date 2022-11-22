//
//  TabBarIcon.swift
//  NFTMarketPlace
//
//  Created by MorsyElsokary on 22/11/2022.
//

import SwiftUI

struct TabBarIcon: View {

    // MARK: - Properties

    @StateObject var pageRouter: PageRouter

    let systemIconName: String
    var page: TabBarPage

    // MARK: - Body

    var body: some View {
        VStack {
            LinearGradient(
                colors: pageRouter.currentPage == page
                ? [Color.white] : [Color.gray], startPoint: .leading,
                endPoint: .top
            )
            .mask(Image(systemIconName))
            .frame(width: 30, height: 30)
            .aspectRatio(contentMode: .fit)
            .padding()
        }
        .onTapGesture {
            pageRouter.currentPage = page
        }
        .padding(.horizontal, -4)
    }
}
