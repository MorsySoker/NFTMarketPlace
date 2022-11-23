//
//  NFTModuleViewModel.swift
//  NFTMarketPlace
//
//  Created by Emad Hany Isaac on 21/11/2022.
//

import Foundation
import Combine


final class NFTModuleViewModel: ObservableObject {
    
    @Published var creatorsArray: [CreatorModel] = []
    @Published var navigateToCreator: Bool = false
    
    init() {
        creatorsArray = CreatorModel.creators()
    }
}
