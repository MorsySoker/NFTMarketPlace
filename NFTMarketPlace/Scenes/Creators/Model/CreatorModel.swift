//
//  CreatorModel.swift
//  NFTMarketPlace
//
//  Created by MorsyElsokary on 21/11/2022.
//

import Foundation

struct CreatorModel: Identifiable {
    var id: UUID = UUID()
    var image: String
    var name: String
    var precentageValue: String
    var role: String
    var balanceInan: String
    var balanceDollar: String
    
    static func creators() -> [CreatorModel] {
        [
            CreatorModel(image: "creator1",
                         name: "@Moshe.Ba...",
                         precentageValue: "+12.63%",
                         role: "Dance", balanceInan: "1000",
                         balanceDollar: "200"),
            CreatorModel(image: "creator2", name: "@Mario_Jo...",
                         precentageValue: "+12.63%",
                         role: "Dance",
                         balanceInan: "1000",
                         balanceDollar: "200"),
            CreatorModel(image: "creator3",
                         name: "@Hailee_ho...",
                         precentageValue: "+12.63%",
                         role: "Dance",
                         balanceInan: "1000",
                         balanceDollar: "200"),
            CreatorModel(image: "creator4",
                         name: "@Moshe.Ba...",
                         precentageValue: "+12.63%",
                         role: "Dance",
                         balanceInan: "1000",
                         balanceDollar: "200"),
            CreatorModel(image: "creator4",
                         name: "@Moshe.Ba...",
                         precentageValue: "+12.63%",
                         role: "Dance",
                         balanceInan: "1000",
                         balanceDollar: "200")
        ]
    }
}
