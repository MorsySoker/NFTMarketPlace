//
//  TabBarView.swift
//  NFTMarketPlace
//
//  Created by MorsyElsokary on 22/11/2022.
//

import SwiftUI

struct TabBarView: View {
    
    @StateObject private var pageRouter: PageRouter = PageRouter(currentPage: .creatorsRanking)
    

    private var tabBar: some View {
        
        HStack {
            TabBarIcon(pageRouter: pageRouter,
                       systemIconName: "Home", page: .creatorsRanking)
            
            Spacer()
            
            TabBarIcon(pageRouter: pageRouter,
                       systemIconName: "Home", page: .secondTab)
            
            Spacer()
            
            TabBarIcon(pageRouter: pageRouter,
                       systemIconName: "Play", page: .thirdTab)
            
            Spacer()
            
            TabBarIcon(pageRouter: pageRouter,
                       systemIconName: "Home", page: .fourthTab)
            
            Spacer()
            
            TabBarIcon(pageRouter: pageRouter,
                       systemIconName: "Home", page: .fifthTab)
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
