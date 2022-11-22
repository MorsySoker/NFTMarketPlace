//
//  PageRouter.swift
//  NFTMarketPlace
//
//  Created by MorsyElsokary on 22/11/2022.
//

import Foundation


enum TabBarPage: CaseIterable {
    case creatorsRanking
    case secondTab
    case thirdTab
    case fourthTab
    case fifthTab
    
    var icon: String {
        switch self {
        case .creatorsRanking:
            return "Home"
        case .secondTab:
            return "Home"
        case .thirdTab:
            return "Play"
        case .fourthTab:
            return "Home"
        case .fifthTab:
            return "Home"
        }
    }
}

class PageRouter: ObservableObject {

    // MARK: - Properties

    @Published var currentPage: TabBarPage

    // MARK: - Init

    init(currentPage: TabBarPage) {
        self.currentPage = currentPage
    }
}
