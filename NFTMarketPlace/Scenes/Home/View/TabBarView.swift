//
//  TabBarView.swift
//  NFTMarketPlace
//
//  Created by Emad Hany Isaac on 22/11/2022.
//

import SwiftUI

struct TabBarView: View {
    
    @StateObject private var pageRouter: PageRouter = PageRouter(currentPage: .creatorsRanking)
    
    
    private var tabBar: some View {
        HStack {
            ForEach(TabBarPage.allCases, id: \.self) { tab in
                TabBarIcon(pageRouter: pageRouter,
                           systemIconName: tab.icon,
                           page: tab)
                .frame(maxWidth: .infinity)
            }
        }
        .frame(height: 50)
        .padding(.horizontal, 20)
        .background(.clear)
    }
    
    @ViewBuilder
    private var tabSwitcher: some View {
        switch pageRouter.currentPage {
        case .creatorsRanking: NFTModuleView()
        default: Color.red
        }
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            tabSwitcher
            
            Spacer()
            
            tabBar
        }
        .setBackground()
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
