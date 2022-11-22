//
//  PageRouter.swift
//  NFTMarketPlace
//
//  Created by Emad Hany Isaac on 22/11/2022.
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
            return ""
        case .secondTab:
            return ""
        case .thirdTab:
            return ""
        case .fourthTab:
            return ""
        case .fifthTab:
            return ""
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
